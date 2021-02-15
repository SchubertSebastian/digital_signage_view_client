package com.dispway.webclient.test.display;

import com.dispway.webclient.test.XiboTestResource;
import com.intuit.karate.junit5.Karate;
import io.quarkus.test.common.QuarkusTestResource;
import io.quarkus.test.junit.QuarkusTest;

@QuarkusTest
@QuarkusTestResource(XiboTestResource.class)
public class DisplayTest {

    @Karate.Test
    Karate testDisplay() {
        return Karate.run("display-get").relativeTo(getClass());
    }
}
