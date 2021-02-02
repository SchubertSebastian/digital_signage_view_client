package com.dispway.webclient.resource;

import com.dispway.webclient.model.form.LoginForm;
import com.dispway.webclient.service.AuthenticationService;
import org.eclipse.microprofile.config.inject.ConfigProperty;
import org.eclipse.microprofile.rest.client.inject.RestClient;

import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Form;

@Path("/authentication")
@Consumes("application/json")
@Produces("application/json")
public class AuthenticationResource {

    @Inject
    @RestClient
    AuthenticationService authenticationService;

    @ConfigProperty(name = "webclient.keycloak-client-id")
    String clientId;

    @ConfigProperty(name = "webclient.keycloak-secret")
    String clientSecret;

    @POST
    @Path("/login")
    public Object login(LoginForm loginForm) {
        Form form = new Form()
                .param("grant_type", "password")
                .param("client_id", this.clientId)
                .param("client_secret", this.clientSecret)
                .param("username", loginForm.username)
                .param("password", loginForm.password);

        return this.authenticationService.login(form);
    }

}
