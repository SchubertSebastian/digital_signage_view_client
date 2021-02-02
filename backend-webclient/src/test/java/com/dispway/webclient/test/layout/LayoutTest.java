package com.dispway.webclient.test.layout;

import com.dispway.webclient.test.XiboTestResource;
import com.intuit.karate.junit5.Karate;
import io.quarkus.test.common.QuarkusTestResource;
import io.quarkus.test.junit.QuarkusTest;

@QuarkusTest
@QuarkusTestResource(XiboTestResource.class)
public class LayoutTest {

    @Karate.Test
    Karate testGetAll() {
        return Karate.run("layout-get").relativeTo(getClass());
    }
}
