package com.ailabtools.sdk;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;

import com.ailabtools.sdk.exception.ApiException;
import com.ailabtools.sdk.generated.params.CommonQueryCreditsParams;
import com.ailabtools.sdk.generated.params.CutoutHdHumanBodyBackgroundRemovalParams;
import com.ailabtools.sdk.generated.params.CutoutUniversalBackgroundRemovalParams;
import com.ailabtools.sdk.generated.params.ImageLosslessEnlargementParams;
import com.ailabtools.sdk.generated.params.ImageRemoveObjectsAdvancedParams;
import com.ailabtools.sdk.generated.params.PortraitFaceAnalyzerAdvancedParams;
import com.ailabtools.sdk.generated.params.PortraitHairstyleEditingPremiumParams;
import com.ailabtools.sdk.generated.params.PortraitAIBreastExpansionParams;
import com.ailabtools.sdk.generated.params.PortraitTryOnClothesPremiumParams;
import com.ailabtools.sdk.http.FileInput;
import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpServer;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;

final class ClientTest {
    private HttpServer server;

    @AfterEach
    void stopServer() {
        if (server != null) server.stop(0);
    }

    @Test
    void premiumHairstyleRequiresStyleOrTemplate() {
        IllegalArgumentException error = assertThrows(
                IllegalArgumentException.class,
                () -> PortraitHairstyleEditingPremiumParams.builder()
                        .image(FileInput.fromBytes(new byte[] {1}, "photo.jpg"))
                        .build());

        assertEquals("At least one of hairStyle, imageTemplate is required", error.getMessage());
    }

    @Test
    void newRequiredParametersAreEnforced() {
        assertThrows(NullPointerException.class,
                () -> CutoutHdHumanBodyBackgroundRemovalParams.builder().build());
        assertThrows(NullPointerException.class,
                () -> PortraitAIBreastExpansionParams.builder().build());
        assertThrows(NullPointerException.class,
                () -> PortraitTryOnClothesPremiumParams.builder()
                        .taskType("async")
                        .personImage(FileInput.fromBytes(new byte[] {1}, "person.jpg"))
                        .build());
    }

    @Test
    void newNestedResponsesDeserialize() throws Exception {
        start(exchange -> {
            if (exchange.getRequestURI().getPath().contains("hd-portrait-background-removal")) {
                respond(exchange, 200,
                        "{\"error_code\":0,\"data\":{\"elements\":[{\"image_url\":\"https://example.com/cutout.png\"}]}}");
            } else {
                respond(exchange, 200,
                        "{\"error_code\":0,\"data\":{\"image\":\"https://example.com/result.png\"}}");
            }
        });
        AILabClient client = client();
        FileInput image = FileInput.fromBytes(new byte[] {1}, "image.jpg");

        var cutout = client.cutout().cutoutHdHumanBodyBackgroundRemoval(
                CutoutHdHumanBodyBackgroundRemovalParams.builder().image(image).build());
        var breast = client.portrait().portraitAIBreastExpansion(
                PortraitAIBreastExpansionParams.builder().personImage(image).build());

        assertEquals("https://example.com/cutout.png",
                cutout.getData().getElements().get(0).getImageUrl());
        assertEquals("https://example.com/result.png", breast.getData().getImage());
    }

    @Test
    void backgroundAliasUploadsFileAndMapsResponse() throws Exception {
        AtomicReference<String> body = new AtomicReference<>();
        AtomicReference<String> apiKey = new AtomicReference<>();
        start(exchange -> {
            body.set(new String(exchange.getRequestBody().readAllBytes(), StandardCharsets.UTF_8));
            apiKey.set(exchange.getRequestHeaders().getFirst("ailabapi-api-key"));
            assertEquals("/api/cutout/general/universal-background-removal", exchange.getRequestURI().getPath());
            respond(exchange, 200, "{\"error_code\":0,\"request_id\":\"request-1\",\"data\":{\"image_url\":\"https://example.com/result.png\"}}");
        });
        AILabClient client = client();

        var result = client.background().remove(
                CutoutUniversalBackgroundRemovalParams.builder()
                        .image(FileInput.fromBytes("image".getBytes(StandardCharsets.UTF_8), "photo.jpg", "image/jpeg"))
                        .returnForm("whiteBK")
                        .build());

        assertEquals("request-1", result.getRequestId());
        assertEquals("https://example.com/result.png", result.getData().getImageUrl());
        assertEquals("test-key", apiKey.get());
        assertTrue(body.get().contains("name=\"return_form\""));
        assertTrue(body.get().contains("whiteBK"));
        assertTrue(body.get().contains("filename=\"photo.jpg\""));
    }

    @Test
    void upscaleMapsCamelCaseFields() throws Exception {
        AtomicReference<String> body = new AtomicReference<>();
        start(exchange -> {
            body.set(new String(exchange.getRequestBody().readAllBytes(), StandardCharsets.UTF_8));
            respond(exchange, 200, "{\"error_code\":0,\"data\":{\"url\":\"https://example.com/upscaled.jpg\"}}");
        });

        var result = client().image().upscale(
                ImageLosslessEnlargementParams.builder()
                        .image(FileInput.fromBytes(new byte[] {1}, "photo.jpg"))
                        .upscaleFactor(4)
                        .outputFormat("jpg")
                        .outputQuality(80)
                        .build());

        assertEquals("https://example.com/upscaled.jpg", result.getData().getUrl());
        assertTrue(body.get().contains("name=\"upscale_factor\""));
        assertTrue(body.get().contains("name=\"output_format\""));
        assertTrue(!body.get().contains("name=\"upscaleFactor\""));
    }

    @Test
    void apiErrorsExposeRequestAndLogIds() throws Exception {
        start(exchange -> respond(exchange, 400,
                "{\"error_code\":1001,\"request_id\":\"request-2\",\"log_id\":\"log-2\","
                        + "\"error_detail\":{\"message\":\"Unsupported image format\"}}"));

        ApiException error = assertThrows(ApiException.class,
                () -> client().common().commonQueryCredits(CommonQueryCreditsParams.builder().build()));

        assertEquals(400, error.getStatusCode());
        assertEquals("request-2", error.getRequestId());
        assertEquals("log-2", error.getLogId());
        assertEquals("Unsupported image format", error.getMessage());
    }

    @Test
    void typedArrayResponsesDeserialize() throws Exception {
        start(exchange -> {
            if (exchange.getRequestURI().getPath().contains("face-analyzer")) {
                respond(exchange, 200,
                        "{\"error_code\":0,\"data\":{\"pupils\":[1,2.5],\"gender_list\":[0,1]}}");
            } else {
                respond(exchange, 200,
                        "{\"error_code\":0,\"data\":{\"binary_data_base64\":[\"first\",\"second\"]}}");
            }
        });
        AILabClient client = client();
        FileInput image = FileInput.fromBytes(new byte[] {1}, "image.jpg");

        var analysis = client.portrait().portraitFaceAnalyzerAdvanced(
                PortraitFaceAnalyzerAdvancedParams.builder().image(image).build());
        var removal = client.image().imageRemoveObjectsAdvanced(
                ImageRemoveObjectsAdvancedParams.builder().image(image).mask(image).build());

        assertEquals(Arrays.asList(1.0, 2.5), analysis.getData().getPupils());
        assertEquals(Arrays.asList(0, 1), analysis.getData().getGenderList());
        assertEquals(Arrays.asList("first", "second"), removal.getData().getBinaryDataBase64());
    }

    @Test
    void waitForTaskPollsUntilSuccess() throws Exception {
        AtomicInteger calls = new AtomicInteger();
        start(exchange -> {
            int status = calls.incrementAndGet() == 1 ? 1 : 2;
            assertEquals("task_id=task-1", exchange.getRequestURI().getQuery());
            respond(exchange, 200, "{\"error_code\":0,\"data\":{\"task_status\":" + status + "}}");
        });

        var result = client().waitForTask(
                "task-1", Duration.ZERO, Duration.ofSeconds(1), true);

        assertEquals(2, result.getData().getTaskStatus());
        assertEquals(2, calls.get());
    }

    private AILabClient client() {
        return AILabClient.builder("test-key")
                .baseUrl("http://127.0.0.1:" + server.getAddress().getPort())
                .timeout(Duration.ofSeconds(5))
                .build();
    }

    private void start(ThrowingHandler handler) throws IOException {
        server = HttpServer.create(new InetSocketAddress("127.0.0.1", 0), 0);
        server.createContext("/", exchange -> {
            try {
                handler.handle(exchange);
            } catch (Exception error) {
                respond(exchange, 500, "{\"error_code\":1,\"error_msg\":\"test handler failed\"}");
            }
        });
        server.start();
    }

    private static void respond(HttpExchange exchange, int status, String body) throws IOException {
        byte[] bytes = body.getBytes(StandardCharsets.UTF_8);
        exchange.getResponseHeaders().set("Content-Type", "application/json");
        exchange.sendResponseHeaders(status, bytes.length);
        exchange.getResponseBody().write(bytes);
        exchange.close();
    }

    @FunctionalInterface
    private interface ThrowingHandler {
        void handle(HttpExchange exchange) throws Exception;
    }
}
