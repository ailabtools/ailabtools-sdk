package com.ailabtools.sdk;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import org.junit.jupiter.api.Test;

final class GeneratedSurfaceTest {
    @Test
    void generatedApiSurfaceContainsAllDocumentedEndpoints() throws IOException {
        Path api = Path.of("src", "main", "java", "com", "ailabtools", "sdk", "api");
        long count;
        try (var files = Files.list(api)) {
            count = files.filter(path -> path.getFileName().toString().endsWith("Api.java"))
                    .flatMap(path -> {
                        try {
                            return Files.lines(path);
                        } catch (IOException error) {
                            throw new IllegalStateException(error);
                        }
                    })
                    .filter(line -> line.contains("requester.request("))
                    .count();
        }
        assertEquals(93, count);
    }
}
