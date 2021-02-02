package com.dispway.webclient.resource;

import com.dispway.webclient.model.form.MediaUploadForm;
import com.dispway.webclient.model.xibo.Media;
import com.dispway.webclient.service.XiboApiService;
import io.quarkus.security.Authenticated;
import org.jboss.resteasy.annotations.providers.multipart.MultipartForm;

import javax.inject.Inject;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import java.io.ByteArrayInputStream;

@Path("/library")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
@Authenticated
public class LibraryResource {

    @Inject
    XiboApiService xiboApiService;

    @GET
    public Response getAllMedia() {
        return Response.ok(this.xiboApiService.getAllMedia()).build();
    }

    @POST
    @Consumes(MediaType.MULTIPART_FORM_DATA)
    public Response uploadMedia(@MultipartForm MediaUploadForm mediaUploadForm) {
        String regex = "^([^<>:\"/\\\\|?*]*)(\\.\\w+)$";
        if (!mediaUploadForm.filename.matches(regex)) {
            return Response.status(Status.BAD_REQUEST).build();
        }

        int i = 0;
        String name = mediaUploadForm.filename;
        Media media = null;
        boolean uploadedSuccessfully = false;
        while (i < 5) {
            if (i != 0) {
                name = mediaUploadForm.filename
                        .replaceAll(regex, "$1 (" + i + ")$2");
            }
            media = this.xiboApiService.uploadMedia(new ByteArrayInputStream(mediaUploadForm.file), name);
            if (media.getError() == null) {
                media.fileName = name;
                uploadedSuccessfully = true;
                break;
            }
            i++;
        }

        if (!uploadedSuccessfully) {
            return Response.status(Status.BAD_REQUEST).build();
        }

        return Response.ok(media).build();
    }

    @DELETE
    @Path("/{media-id}")
    public Response deleteMedia(@PathParam("media-id") Long mediaId) {
        boolean wasSuccessful = this.xiboApiService.deleteMedia(mediaId);
        if (!wasSuccessful) {
            return Response.status(Status.NOT_FOUND).build();
        }

        return Response.noContent().build();
    }

    @GET
    @Path("/download/{media-id}")
    public Response downloadMedia(@PathParam("media-id") Long mediaId) {
        try {
            return Response.ok(this.xiboApiService.downloadMedia(mediaId)).build();
        } catch (Exception e) {
            // Handle 4xx & 5xx Error.
            // 4xx When the media does not exist
            // 5xx When the media has no preview
            return Response.status(Status.NOT_FOUND).build();
        }
    }

    @GET
    @Path("/preview/{media-id}")
    public Response previewMedia(@PathParam("media-id") Long mediaId) {
        try {
            return Response.ok(this.xiboApiService.previewMedia(mediaId)).build();
        } catch (Exception e) {
            // Handle 4xx & 5xx Error.
            // 4xx When the media does not exist
            // 5xx When the media has no preview
            return Response.status(Status.NOT_FOUND).build();
        }
    }
}
