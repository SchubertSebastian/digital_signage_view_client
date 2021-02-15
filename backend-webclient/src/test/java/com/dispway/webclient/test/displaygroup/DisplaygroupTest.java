package com.dispway.webclient.test.displaygroup;

import com.dispway.webclient.test.XiboTestResource;
import com.intuit.karate.junit5.Karate;
import io.quarkus.test.common.QuarkusTestResource;
import io.quarkus.test.junit.QuarkusTest;

@QuarkusTest
@QuarkusTestResource(XiboTestResource.class)
public class DisplaygroupTest {

    @Karate.Test
    Karate testDisplaygroup() {
        return Karate.run("displaygroup-get").relativeTo(getClass());
    }
}
