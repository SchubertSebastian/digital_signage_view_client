package com.dispway.webclient.model.xibo;

import java.util.List;

public class Widget {
    public Long widgetId;
    public Long playlistId;
    public String type;
    public Integer duration;
    public Integer fromDt;
    public Integer toDt;
    public List<Integer> mediaIds;
    public List<WidgetOption> widgetOptions;
}
