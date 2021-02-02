package com.dispway.webclient.model;

import com.dispway.webclient.model.xibo.Widget;

import java.util.List;

public class WidgetServiceResult {
    public List<WidgetResult> toAdd;
    public List<Widget> toDelete;
    public List<WidgetResult> toKeep;
    public boolean hasNewOrder;

    public WidgetServiceResult(List<WidgetResult> toAdd, List<Widget> toDelete, List<WidgetResult> toKeep, boolean hasNewOrder) {
        this.toAdd = toAdd;
        this.toDelete = toDelete;
        this.toKeep = toKeep;
        this.hasNewOrder = hasNewOrder;
    }

    public static class WidgetResult {
        public Widget widget;
        public boolean hasNewOptions;
        public boolean hasNewExpiration;
        public int position;

        public WidgetResult(Widget widget, boolean hasNewOptions, int position) {
            this.widget = widget;
            this.hasNewOptions = hasNewOptions;
            this.hasNewExpiration = widget.fromDt != 0 || widget.toDt != Integer.MAX_VALUE;
            this.position = position;
        }
    }
}
