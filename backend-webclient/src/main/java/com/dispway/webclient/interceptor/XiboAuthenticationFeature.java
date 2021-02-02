package com.dispway.webclient.interceptor;

import com.dispway.webclient.service.XiboTokenService;

import javax.inject.Inject;
import javax.ws.rs.container.DynamicFeature;
import javax.ws.rs.container.ResourceInfo;
import javax.ws.rs.core.FeatureContext;
import javax.ws.rs.ext.Provider;

@Provider
public class XiboAuthenticationFeature implements DynamicFeature {

    @Inject
    XiboTokenService xiboTokenService;

    @Override
    public void configure(ResourceInfo resourceInfo, FeatureContext context) {
        XiboAuthentication authentication = resourceInfo.getResourceMethod().getAnnotation(XiboAuthentication.class);
        if (authentication == null) {
            return;
        }

        XiboAuthenticationFilter filter = new XiboAuthenticationFilter(xiboTokenService);
        context.register(filter);
    }
}
