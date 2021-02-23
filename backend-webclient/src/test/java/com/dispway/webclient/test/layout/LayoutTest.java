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


    @Karate.Test
    Karate testGetLayoutById() {
        return Karate.run("getLayoutById").relativeTo(getClass());
    }

    @Karate.Test
    Karate testGetLayoutByParentId() {
        return Karate.run("getLayoutByParentId").relativeTo(getClass());
    }


    @Karate.Test
    Karate testCheckoutLayoutById() {
        return Karate.run("checkoutLayoutById").relativeTo(getClass());
    }



    @Karate.Test
    Karate testPublishLayoutById() {
        return Karate.run("publishLayoutById").relativeTo(getClass());
    }

}
