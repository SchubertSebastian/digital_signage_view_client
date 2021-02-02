package com.dispway.webclient.model.form;

import org.jboss.resteasy.annotations.providers.multipart.PartType;

import javax.ws.rs.FormParam;
import javax.ws.rs.core.MediaType;

public class MediaUploadForm {

    @FormParam("file")
    @PartType(MediaType.APPLICATION_OCTET_STREAM)
    public byte[] file;

    @FormParam("filename")
    @PartType(MediaType.TEXT_PLAIN)
    public String filename;
}
