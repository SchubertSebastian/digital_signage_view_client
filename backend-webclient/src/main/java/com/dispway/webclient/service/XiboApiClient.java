package com.dispway.webclient.service;

import com.dispway.webclient.interceptor.JsonForcer;
import com.dispway.webclient.interceptor.XiboAuthentication;
import com.dispway.webclient.model.form.MediaUploadResponse;
import com.dispway.webclient.model.form.XiboTokenBody;
import com.dispway.webclient.model.xibo.*;
import org.eclipse.microprofile.rest.client.inject.RegisterRestClient;
import org.jboss.resteasy.annotations.providers.multipart.MultipartForm;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataOutput;

import javax.ws.rs.*;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.io.InputStream;
import java.util.List;

@RegisterRestClient
public interface XiboApiClient {

    @GET
    @Path("/display")
    @XiboAuthentication
    List<Display> getDisplaysByDisplaygroupId(
            @QueryParam("displayGroupId") Long displayGroupId
    );

    @GET
    @Path("/displaygroup")
    @XiboAuthentication
    List<DisplayGroup> getDisplayGroupsByTag(
            @QueryParam("tags") String tag
    );

    @GET
    @Path("/layout")
    @XiboAuthentication
    List<Layout> getAllLayouts(
            @QueryParam("tags") String tags,
            @QueryParam("embed") String embed,
            @QueryParam("retired") Integer retired
    );

    @GET
    @Path("/layout")
    @JsonForcer
    @XiboAuthentication
    List<Layout> getLayoutById(
            @QueryParam("layoutId") Long layoutId,
            @QueryParam("tags") String tags,
            @QueryParam("embed") String embed,
            @QueryParam("retired") Integer retired
    );

    @GET
    @Path("/layout")
    @XiboAuthentication
    List<Layout> getLayoutByParentId(
            @QueryParam("parentId") Long parentId,
            @QueryParam("embed") String embed,
            @QueryParam("retired") Integer retired
    );

    @PUT
    @Path("/layout/checkout/{layoutId}")
    @XiboAuthentication
    Layout checkoutLayoutById(
            @PathParam("layoutId") Long layoutId
    );

    @PUT
    @Path("/layout/publish/{layout-id}")
    @XiboAuthentication
    Layout publishLayoutById(
            @PathParam("layout-id") Long layoutId,
            @FormParam("publishNow") Integer publishNow
    );

    @GET
    @Path("/library")
    @XiboAuthentication
    List<Media> getAllMedia(
            @QueryParam("tags") String tags,
            @QueryParam("retired") Integer retired,
            @QueryParam("length") Integer length
    );

    @POST
    @Path("/library")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    @JsonForcer // workaround -> force text/html to be application/json
    @XiboAuthentication
    MediaUploadResponse uploadMedia(
            MultipartFormDataOutput form
    );

    @DELETE
    @Path("/library/{media-id}")
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @XiboAuthentication
    Response deleteMedia(
            @PathParam("media-id") Long mediaId,
            @FormParam("forceDelete") Integer forceDelete
    );

    @GET
    @Path("/library/download/{media-id}")
    @Produces(MediaType.WILDCARD)
    @XiboAuthentication
    InputStream downloadMedia(
            @PathParam("media-id") Long mediaId,
            @QueryParam("preview") Integer preview,
            @QueryParam("width") Integer width,
            @QueryParam("height") Integer height
    );

    @PUT
    @Path("/playlist/widget/{widgetId}")
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @XiboAuthentication
    void updateWidgetById(
            @PathParam("widgetId") Long widgetId,
            Form form
    );

    @DELETE
    @Path("/playlist/widget/{widgetId}")
    @XiboAuthentication
    void deleteWidgetById(
            @PathParam("widgetId") Long widgetId
    );


    @PUT
    @Path("/playlist/widget/{widgetId}/expiry")
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @XiboAuthentication
    void updateWidgetExpiration(
            @PathParam("widgetId") Long widgetId,
            @FormParam("fromDt") String fromDt,
            @FormParam("toDt") String toDt
    );

    @POST
    @Path("/playlist/widget/{type}/{playlistId}")
    @Consumes(MediaType.APPLICATION_JSON)
    @XiboAuthentication
    Widget createWidget(
            @PathParam("type") String type,
            @PathParam("playlistId") Long playlistId
    );

    @POST
    @Path("/playlist/library/assign/{playlistId}")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    @XiboAuthentication
    Playlist assignLibraryItem(
            @PathParam("playlistId") Long playlistId,
            @FormParam("media[]") List<Integer> medias
    );

    @POST
    @Path("/playlist/order/{playlistId}")
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @XiboAuthentication
    void orderPlaylist(
            @PathParam("playlistId") Long playlistId,
            Form form
    );

    @POST
    @Path("/authorize/access_token")
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    XiboToken getAccessToken(@MultipartForm XiboTokenBody data);
}
