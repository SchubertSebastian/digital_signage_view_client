package com.dispway.webclient.service;

import com.dispway.webclient.model.form.MediaUploadResponse;
import com.dispway.webclient.model.xibo.*;
import org.eclipse.microprofile.rest.client.inject.RestClient;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataOutput;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.io.InputStream;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.TimeZone;

@ApplicationScoped
public class XiboApiService {

    @Inject
    @RestClient
    XiboApiClient xiboApiClient;

    @Inject
    TagsService tagsService;

    ////////////
    // Layout //
    ////////////

    public List<Layout> getReadableLayouts() {
        String readableTags = this.tagsService.getReadableTags();
        return this.xiboApiClient.getAllLayouts(readableTags, "regions,playlists,widgets", 0);
    }

    public Layout getReadableLayoutById(Long layoutId) {
        String readableTags = this.tagsService.getReadableTags();
        List<Layout> layouts = this.xiboApiClient.getLayoutById(layoutId, readableTags, "regions,playlists,widgets", 0);

        if (layouts.size() != 1) return null;
        Layout childLayout = layouts.get(0);

        // If it is NOT checked out, check it out, else get the checked out layout
        Layout parentLayout;
        if (childLayout.publishedStatusId == 1) {
            parentLayout = this.xiboApiClient.checkoutLayoutById(childLayout.layoutId);
        } else {
            parentLayout = this.xiboApiClient
                    .getLayoutByParentId(childLayout.layoutId, "regions,playlists,widgets", 0)
                    .get(0);
        }

        // Set the displays right after you got the layout
        // Get the tag with the same name as the layout
        List<DisplayGroup> displayGroups = this.xiboApiClient.getDisplayGroupsByTag(parentLayout.layout);

        if (displayGroups.isEmpty()) {
            // TODO: Warn of no display
        } else if (displayGroups.size() != 1) {
            // TODO: Warn of to many display group with same tag. First display group will be used
        } else {
            DisplayGroup displayGroup = displayGroups.get(0);
            parentLayout.displays = this.xiboApiClient.getDisplaysByDisplaygroupId(displayGroup.displayGroupId);
        }

        return parentLayout;
        // TODO: What happens if the user requests the checked out id. It would try to get the parent which doesnt exist
    }

    public Layout publishLayoutById(Long layoutId) {
        return this.xiboApiClient.publishLayoutById(layoutId, 1);
    }

    ////////////
    // Widget //
    ////////////

    public Long createWidget(Widget widget, Long playlistId) {
        // Edge case with library items: You need to assign them instead of creating them
        if (widget.mediaIds.isEmpty()) {
            Widget aWidget = this.xiboApiClient.createWidget(widget.type, playlistId);
            return aWidget.widgetId;
        } else {
            Playlist playlist = this.xiboApiClient.assignLibraryItem(playlistId, widget.mediaIds);
            List<Widget> widgets = playlist.widgets;
            return widgets.get(widgets.size() - 1).widgetId;
        }
    }

    public void updateWidgetExpiration(long widgetId, int fromDt, int toDt) {
        // xibo specific format: Y-m-d H::i:s | 2020-10-15 00:30:00
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("y-M-d HH:mm:ss");
        LocalDateTime from = LocalDateTime.ofInstant(Instant.ofEpochSecond(fromDt), TimeZone.getDefault().toZoneId());
        LocalDateTime to = LocalDateTime.ofInstant(Instant.ofEpochSecond(toDt), TimeZone.getDefault().toZoneId());
        this.xiboApiClient.updateWidgetExpiration(widgetId, from.format(formatter), to.format(formatter));
    }

    ///////////
    // Media //
    ///////////

    public List<Media> getAllMedia() {
        String readableTags = this.tagsService.getReadableTags();
        return this.xiboApiClient.getAllMedia(readableTags, 0, Integer.MAX_VALUE);
    }

    public Media uploadMedia(InputStream file, String filename) {
        String writeableTags = this.tagsService.getWriteableTags();

        MultipartFormDataOutput form = new MultipartFormDataOutput();
        form.addFormData("files", file, MediaType.APPLICATION_OCTET_STREAM_TYPE, filename);
        form.addFormData("tags", writeableTags, MediaType.TEXT_PLAIN_TYPE);

        MediaUploadResponse mediaUploadResponse = this.xiboApiClient.uploadMedia(form);

        // only 1 item in the response list due to uploading only 1 file
        return mediaUploadResponse.files.get(0);
    }

    public InputStream downloadMedia(Long mediaId) {
        return this.xiboApiClient.downloadMedia(mediaId, 1, null, null);
    }

    public InputStream previewMedia(Long mediaId) {
        return this.xiboApiClient.downloadMedia(mediaId, 1, 100, 56);
    }

    public boolean deleteMedia(Long mediaId) {
        Response response = this.xiboApiClient.deleteMedia(mediaId, 1);
        // If the force delete was not successful the media never existed => 404
        return response.getStatusInfo().getFamily() == Response.Status.Family.SUCCESSFUL;
    }
}
