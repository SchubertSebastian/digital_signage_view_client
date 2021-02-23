package com.dispway.webclient.test.library;

import com.dispway.webclient.test.XiboTestResource;
import com.intuit.karate.junit5.Karate;
import io.quarkus.test.common.QuarkusTestResource;
import io.quarkus.test.junit.QuarkusTest;

@QuarkusTest
@QuarkusTestResource(XiboTestResource.class)
public class LibraryTest {

    @Karate.Test
    Karate testUploadMedia() {
        return Karate.run("uploadMedia").relativeTo(getClass());
    }

    @Karate.Test
    Karate testDeleteMedia() {
        return Karate.run("deleteMedia").relativeTo(getClass());
    }


    @Karate.Test
    Karate testGetAllMedia() {
        return Karate.run("getAllMedia").relativeTo(getClass());
    }


    @Karate.Test
    Karate testDownloadMedia() {
        return Karate.run("getAllMedia").relativeTo(getClass());
    }

}
