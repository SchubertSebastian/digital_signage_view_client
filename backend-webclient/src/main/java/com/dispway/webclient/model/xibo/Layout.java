package com.dispway.webclient.model.xibo;

import java.util.List;

public class Layout {
    public Long layoutId;
    public String layout;
    public Integer parentId;
    public Integer publishedStatusId;
    public List<Region> regions;

    // Custom field. This way we can send the client all the data in one request
    public List<Display> displays;
}
