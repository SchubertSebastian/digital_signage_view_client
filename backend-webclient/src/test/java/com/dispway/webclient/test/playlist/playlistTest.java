package com.dispway.webclient.test.playlist;

import com.dispway.webclient.test.XiboTestResource;
import com.intuit.karate.junit5.Karate;
import io.quarkus.test.common.QuarkusTestResource;
import io.quarkus.test.junit.QuarkusTest;

@QuarkusTest
@QuarkusTestResource(XiboTestResource.class)
public class playlistTest {

    @Karate.Test
    Karate testUpdateWidgetById() {
        return Karate.run("updateWidgetById").relativeTo(getClass());
    }


    @Karate.Test
    Karate testDeleteWidgetById() {
        return Karate.run("deleteWidgetById").relativeTo(getClass());
    }


    @Karate.Test
    Karate testUpdateWidgetExpiration() {
        return Karate.run("updateWidgetExpiration").relativeTo(getClass());
    }


    @Karate.Test
    Karate testCreateWidget() {
        return Karate.run("createWidget").relativeTo(getClass());
    }


    @Karate.Test
    Karate testAssignLibraryItem() {
        return Karate.run("assignLibraryItem").relativeTo(getClass());
    }


    @Karate.Test
    Karate testOrderPlaylist() {
        return Karate.run("orderPlaylist").relativeTo(getClass());
    }


}
