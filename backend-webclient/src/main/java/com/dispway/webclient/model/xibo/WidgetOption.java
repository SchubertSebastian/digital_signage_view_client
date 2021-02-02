package com.dispway.webclient.model.xibo;

import java.util.Objects;

public class WidgetOption {
    public String option;
    public String value;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof WidgetOption)) return false;
        WidgetOption that = (WidgetOption) o;
        return option.equals(that.option) &&
                Objects.equals(value, that.value);
    }

    @Override
    public int hashCode() {
        return Objects.hash(option, value);
    }
}
