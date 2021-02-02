package com.dispway.webclient.model.xibo;

import javax.json.bind.annotation.JsonbTransient;

public class Media {
    public Long mediaId;
    public String name;
    public String fileName;
    public String mediaType;

    // Serialize the 'error' when its comes from xibo.
    // When send media to the client just ignore the 'error'
    private String error;

    @JsonbTransient
    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }
}
