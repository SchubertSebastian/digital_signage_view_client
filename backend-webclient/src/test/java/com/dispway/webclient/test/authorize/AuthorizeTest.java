package com.dispway.webclient.test.authorize;

import com.dispway.webclient.test.XiboTestResource;
import com.intuit.karate.junit5.Karate;
import io.quarkus.test.common.QuarkusTestResource;
import io.quarkus.test.junit.QuarkusTest;

@QuarkusTest
@QuarkusTestResource(XiboTestResource.class)
public class AuthorizeTest {

    @Karate.Test
    Karate testGetAccessToken() {
        return Karate.run("getAccessToken").relativeTo(getClass());
    }


}
