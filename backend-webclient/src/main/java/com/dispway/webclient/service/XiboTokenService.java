package com.dispway.webclient.service;

import com.dispway.webclient.model.xibo.XiboToken;
import com.dispway.webclient.model.form.XiboTokenBody;
import org.eclipse.microprofile.rest.client.inject.RestClient;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import java.time.LocalDateTime;

@ApplicationScoped
public class XiboTokenService {

    @Inject
    @RestClient
    XiboApiClient xiboApiClient;

    private String token;
    private LocalDateTime expirationDate = LocalDateTime.MIN;

    public String getToken() {
        if (this.expirationDate.isBefore(LocalDateTime.now())) {
            XiboToken xiboToken = this.xiboApiClient.getAccessToken(new XiboTokenBody());
            this.token = xiboToken.access_token;
            this.expirationDate = LocalDateTime.now().plusSeconds(xiboToken.expires_in);
        }

        return this.token;
    }
}
