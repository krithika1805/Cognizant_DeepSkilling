package com.cognizant.junit;

import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class AppTest {

    @Test
    public void testAdd() {

        // Arrange
        App app = new App();

        // Act
        int result = app.add(10, 20);

        // Assert
        assertEquals(30, result);
    }
}