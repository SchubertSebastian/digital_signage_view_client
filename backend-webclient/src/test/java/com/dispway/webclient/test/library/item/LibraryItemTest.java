package com.dispway.webclient.test.library.item;

import com.dispway.webclient.test.XiboTestResource;
import com.intuit.karate.junit5.Karate;
import io.quarkus.test.common.QuarkusTestResource;
import io.quarkus.test.junit.QuarkusTest;

@QuarkusTest
@QuarkusTestResource(XiboTestResource.class)
public class LibraryItemTest {

    @Karate.Test
    Karate testPostImage() {
        return Karate.run("library-post").relativeTo(getClass());
    }
}
