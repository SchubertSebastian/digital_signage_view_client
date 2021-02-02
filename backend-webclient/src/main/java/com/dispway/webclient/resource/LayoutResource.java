package com.dispway.webclient.resource;

import com.dispway.webclient.model.WidgetServiceResult;
import com.dispway.webclient.model.WidgetServiceResult.WidgetResult;
import com.dispway.webclient.model.xibo.Layout;
import com.dispway.webclient.model.xibo.Region;
import com.dispway.webclient.model.xibo.Widget;
import com.dispway.webclient.service.WidgetService;
import com.dispway.webclient.service.XiboApiClient;
import com.dispway.webclient.service.XiboApiService;
import io.quarkus.security.Authenticated;
import org.eclipse.microprofile.rest.client.inject.RestClient;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.LinkedList;
import java.util.List;

@Path("/layout")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
@Authenticated
public class LayoutResource {

    @Inject
    WidgetService widgetService;

    @Inject
    @RestClient
    XiboApiClient xiboApiClient;

    @Inject
    XiboApiService xiboApiService;

    @GET
    public Response getAllLayouts() {
        List<Layout> layouts = this.xiboApiService.getReadableLayouts();
        return Response.ok(layouts).build();
    }

    @GET
    @Path("/{layoutId}")
    public Response getLayoutById(@PathParam("layoutId") Long layoutId) {
        Layout layout = this.xiboApiService.getReadableLayoutById(layoutId);
        return Response.ok(layout).build();
    }

    @PUT
    @Path("/{layoutId}")
    public Response updateLayoutById(@PathParam("layoutId") Long layoutId, Layout layout) {
        // TODO: Only when write access
        List<Layout> layouts = this.xiboApiClient.getLayoutByParentId(layoutId, "regions,playlists,widgets", 0);
        if (layouts.size() != 1) throw new NotFoundException();
        Layout currentLayout = layouts.get(0);

        for (Region region : currentLayout.regions) {
            Region foundRegion = layout.regions.stream()
                    .filter(aRegion -> aRegion.regionId.equals(region.regionId))
                    .findAny()
                    .orElseThrow(BadRequestException::new);

            WidgetServiceResult result = this.widgetService.getResult(
                    region.regionPlaylist.widgets,
                    foundRegion.regionPlaylist.widgets
            );

            result.toDelete.forEach(widget -> this.xiboApiClient.deleteWidgetById(widget.widgetId));

            result.toAdd.forEach(widgetResult -> {
                Widget widget = widgetResult.widget;

                Long widgetId = this.xiboApiService.createWidget(widget, region.regionPlaylist.playlistId);
                widget.widgetId = widgetId;

                if (widgetResult.hasNewExpiration) {
                    this.xiboApiService.updateWidgetExpiration(widget.widgetId, widget.fromDt, widget.toDt);
                }

                Form form = new Form();
                widget.widgetOptions.forEach(widgetOption -> form.param(widgetOption.option, widgetOption.value));

                this.xiboApiClient.updateWidgetById(widgetId, form);
            });

            result.toKeep.forEach(widgetResult -> {
                // TODO: Create uniform solution instead of copy paste from 'toAdd'
                Widget widget = widgetResult.widget;

                if (widgetResult.hasNewExpiration) {
                    this.xiboApiService.updateWidgetExpiration(widget.widgetId, widget.fromDt, widget.toDt);
                }

                Form form = new Form();
                widget.widgetOptions.forEach(widgetOption -> form.param(widgetOption.option, widgetOption.value));

                this.xiboApiClient.updateWidgetById(widget.widgetId, form);
            });

            if (result.hasNewOrder) {
                Form form = new Form();

                List<WidgetResult> toOrder = new LinkedList<>();
                toOrder.addAll(result.toAdd);
                toOrder.addAll(result.toKeep);

                toOrder.forEach(widgetResult -> form.param(
                        "widgets[" + widgetResult.widget.widgetId + "]", String.valueOf(widgetResult.position)
                ));

                if (form.asMap().size() > 1) this.xiboApiClient.orderPlaylist(region.regionPlaylist.playlistId, form);
            }
        }

        Layout publishedLayout = this.xiboApiService.publishLayoutById(layoutId);

        return Response.ok(publishedLayout).build();
    }
}
