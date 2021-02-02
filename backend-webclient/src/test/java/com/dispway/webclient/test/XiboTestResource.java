package com.dispway.webclient.test;

import io.quarkus.test.common.QuarkusTestResourceLifecycleManager;
import org.testcontainers.containers.DockerComposeContainer;
import org.testcontainers.containers.wait.strategy.Wait;

import java.io.File;
import java.util.Map;

public class XiboTestResource implements QuarkusTestResourceLifecycleManager {

    private static final int KEYCLOAK_PORT = 8080;
    private static final int CMR_PORT = 9505;
    private static final int WEB_PORT = 80;
    private static final int DB_PORT = 3306;

    public static final DockerComposeContainer<?> COMPOSE =
            new DockerComposeContainer<>(new File("src/test/resources/docker-compose.yml"))
                    .withExposedService("db_1", DB_PORT)
                    .withExposedService("xmr_1", CMR_PORT)
                    .withExposedService("identity-provider_1", KEYCLOAK_PORT)
                    .withExposedService("web_1", WEB_PORT, Wait.forHttp("/").forPort(WEB_PORT).forStatusCode(200));

    @Override
    public Map<String, String> start() {
        COMPOSE.start();
        String keycloakUrl =
                "http://" + COMPOSE.getServiceHost("identity-provider_1", KEYCLOAK_PORT)
                        + ":" + COMPOSE.getServicePort("identity-provider_1", KEYCLOAK_PORT);

        String xiboUrl =
                "http://" + COMPOSE.getServiceHost("web_1", WEB_PORT)
                        + ":" + COMPOSE.getServicePort("web_1", WEB_PORT);

        return Map.of("webclient.keycloak-host", keycloakUrl, "webclient.xibo.host", xiboUrl);
    }

    @Override
    public void stop() {
        COMPOSE.stop();
    }
}
