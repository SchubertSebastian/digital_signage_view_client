package com.dispway.webclient.interceptor;

import com.dispway.webclient.service.XiboTokenService;

import javax.ws.rs.client.ClientRequestContext;
import javax.ws.rs.client.ClientRequestFilter;
import java.io.IOException;

public class XiboAuthenticationFilter implements ClientRequestFilter {

    private final XiboTokenService xiboTokenService;

    public XiboAuthenticationFilter(XiboTokenService xiboTokenService) {
        this.xiboTokenService = xiboTokenService;
    }

    @Override
    public void filter(ClientRequestContext requestContext) throws IOException {
        requestContext.getHeaders().putSingle("Authorization", "Bearer " + this.xiboTokenService.getToken());
    }
}
