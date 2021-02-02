package com.dispway.webclient.service;

import com.dispway.webclient.model.WidgetServiceResult;
import com.dispway.webclient.model.xibo.Widget;

import javax.enterprise.context.ApplicationScoped;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

@ApplicationScoped
public class WidgetService {

    public WidgetServiceResult getResult(List<Widget> currentWidgets, List<Widget> newWidgets) {
        List<WidgetServiceResult.WidgetResult> toAdd = new LinkedList<>();
        List<WidgetServiceResult.WidgetResult> toKeep = new LinkedList<>();

        int position = 0;
        for (Widget newWidget : newWidgets) {
            if (newWidget.widgetId == -1) {
                toAdd.add(new WidgetServiceResult.WidgetResult(newWidget, true, position++));
            }

            Widget foundWidget = currentWidgets.stream()
                    .filter(widget -> widget.widgetId.equals(newWidget.widgetId))
                    .findAny()
                    .orElse(null);

            // TODO: consider returning 400
            if (foundWidget == null) continue;

            boolean hasNewOptions = !foundWidget.widgetOptions.containsAll(newWidget.widgetOptions);
            toKeep.add(new WidgetServiceResult.WidgetResult(newWidget, hasNewOptions, position++));
        }

        List<Widget> toDelete = currentWidgets.stream()
                .filter(currentWidget -> toKeep.stream()
                        .noneMatch(widgetResult -> widgetResult.widget.widgetId.equals(currentWidget.widgetId))
                )
                .collect(Collectors.toList());

        // TODO: Find out if the order changed

        return new WidgetServiceResult(toAdd, toDelete, toKeep, true);
    }
}
