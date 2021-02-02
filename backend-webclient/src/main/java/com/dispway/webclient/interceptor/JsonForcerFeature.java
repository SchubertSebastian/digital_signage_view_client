package com.dispway.webclient.interceptor;

import javax.ws.rs.container.DynamicFeature;
import javax.ws.rs.container.ResourceInfo;
import javax.ws.rs.core.FeatureContext;
import javax.ws.rs.ext.Provider;

@Provider
public class JsonForcerFeature implements DynamicFeature {

    @Override
    public void configure(ResourceInfo resourceInfo, FeatureContext context) {
        JsonForcer forcer = resourceInfo.getResourceMethod().getAnnotation(JsonForcer.class);
        if (forcer == null) {
            return;
        }

        JsonForcerFilter filter = new JsonForcerFilter();
        context.register(filter);
    }
}
