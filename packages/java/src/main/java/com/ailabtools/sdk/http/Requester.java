package com.ailabtools.sdk.http;

import com.ailabtools.sdk.exception.ApiException;
import com.ailabtools.sdk.exception.SdkException;
import com.ailabtools.sdk.response.BaseResponse;
import com.ailabtools.sdk.response.ErrorDetail;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URI;
import java.net.URLEncoder;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/** Internal HTTP transport shared by all API modules. */
public final class Requester {
    private static final TypeReference<Map<String, Object>> MAP_TYPE =
            new TypeReference<Map<String, Object>>() {};

    private final HttpClient client;
    private final ObjectMapper mapper;
    private final String apiKey;
    private final String baseUrl;
    private final Duration timeout;

    public Requester(HttpClient client, ObjectMapper mapper, String apiKey, String baseUrl, Duration timeout) {
        this.client = client;
        this.mapper = mapper;
        this.apiKey = apiKey;
        this.baseUrl = baseUrl.replaceAll("/+$", "");
        this.timeout = timeout;
    }

    public <T extends BaseResponse> T request(
            String method,
            String path,
            Map<String, Object> params,
            boolean multipart,
            Class<T> responseClass) {
        String url = baseUrl + "/" + path.replaceFirst("^/+", "");
        HttpRequest.Builder builder;
        if ("GET".equalsIgnoreCase(method)) {
            String query = encodeQuery(params);
            builder = HttpRequest.newBuilder(URI.create(query.isEmpty() ? url : url + "?" + query)).GET();
        } else if (multipart) {
            MultipartBody body = multipart(params);
            builder = HttpRequest.newBuilder(URI.create(url))
                    .method(method, HttpRequest.BodyPublishers.ofByteArray(body.bytes))
                    .header("Content-Type", "multipart/form-data; boundary=" + body.boundary);
        } else {
            try {
                builder = HttpRequest.newBuilder(URI.create(url))
                        .method(method, HttpRequest.BodyPublishers.ofString(mapper.writeValueAsString(withoutNulls(params))));
            } catch (JsonProcessingException error) {
                throw new SdkException("Unable to serialize AILabTools request", error);
            }
            builder.header("Content-Type", "application/json");
        }
        builder.header("ailabapi-api-key", apiKey).timeout(timeout);

        final HttpResponse<String> response;
        try {
            response = client.send(builder.build(), HttpResponse.BodyHandlers.ofString(StandardCharsets.UTF_8));
        } catch (InterruptedException error) {
            Thread.currentThread().interrupt();
            throw new SdkException("AILabTools request was interrupted", error);
        } catch (IOException error) {
            throw new SdkException("AILabTools request failed", error);
        }

        final ObjectNode payload;
        try {
            JsonNode decoded = mapper.readTree(response.body());
            if (!(decoded instanceof ObjectNode)) {
                throw new JsonProcessingException("Expected a JSON object") {};
            }
            payload = (ObjectNode) decoded;
        } catch (JsonProcessingException error) {
            throw new ApiException(
                    response.body().isEmpty() ? "Empty response" : "Invalid JSON response",
                    response.statusCode(),
                    null,
                    null,
                    null,
                    Collections.emptyMap());
        }

        Map<String, Object> raw = mapper.convertValue(payload, MAP_TYPE);
        int errorCode = payload.path("error_code").asInt(0);
        if (response.statusCode() != 200 || errorCode != 0) {
            ErrorDetail detail = payload.has("error_detail") && payload.get("error_detail").isObject()
                    ? mapper.convertValue(payload.get("error_detail"), ErrorDetail.class)
                    : null;
            String message = detail != null && detail.getMessage() != null
                    ? detail.getMessage()
                    : textOrNull(payload, "error_msg");
            throw new ApiException(
                    message == null ? "AILabTools API Error" : message,
                    response.statusCode(),
                    textOrNull(payload, "request_id"),
                    textOrNull(payload, "log_id"),
                    detail,
                    raw);
        }

        try {
            T result = mapper.treeToValue(payload, responseClass);
            result.setRaw(raw);
            return result;
        } catch (JsonProcessingException error) {
            throw new SdkException("Unable to deserialize AILabTools response", error);
        }
    }

    private static String textOrNull(ObjectNode payload, String name) {
        JsonNode node = payload.get(name);
        return node == null || node.isNull() ? null : node.asText();
    }

    private static Map<String, Object> withoutNulls(Map<String, Object> params) {
        Map<String, Object> result = new java.util.LinkedHashMap<>();
        params.forEach((key, value) -> {
            if (value != null) result.put(key, value);
        });
        return result;
    }

    private static String encodeQuery(Map<String, Object> params) {
        List<String> pairs = new ArrayList<>();
        withoutNulls(params).forEach((key, value) -> pairs.add(
                encode(key) + "=" + encode(stringify(value))));
        return String.join("&", pairs);
    }

    private static String encode(String value) {
        try {
            return URLEncoder.encode(value, StandardCharsets.UTF_8.name());
        } catch (java.io.UnsupportedEncodingException impossible) {
            throw new AssertionError(impossible);
        }
    }

    private static MultipartBody multipart(Map<String, Object> params) {
        String boundary = "----AILabTools-" + UUID.randomUUID();
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        try {
            for (Map.Entry<String, Object> entry : withoutNulls(params).entrySet()) {
                write(output, "--" + boundary + "\r\n");
                Object value = entry.getValue();
                if (value instanceof FileInput) {
                    FileInput file = (FileInput) value;
                    write(output, "Content-Disposition: form-data; name=\"" + escape(entry.getKey())
                            + "\"; filename=\"" + escape(file.filename()) + "\"\r\n");
                    write(output, "Content-Type: " + file.contentType() + "\r\n\r\n");
                    output.write(file.bytes());
                    write(output, "\r\n");
                } else {
                    write(output, "Content-Disposition: form-data; name=\"" + escape(entry.getKey()) + "\"\r\n\r\n");
                    write(output, stringify(value) + "\r\n");
                }
            }
            write(output, "--" + boundary + "--\r\n");
        } catch (IOException impossible) {
            throw new AssertionError(impossible);
        }
        return new MultipartBody(boundary, output.toByteArray());
    }

    private static void write(ByteArrayOutputStream output, String value) throws IOException {
        output.write(value.getBytes(StandardCharsets.UTF_8));
    }

    private static String escape(String value) {
        return value.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    private static String stringify(Object value) {
        if (value instanceof Iterable<?>) {
            List<String> parts = new ArrayList<>();
            for (Object item : (Iterable<?>) value) parts.add(String.valueOf(item));
            return String.join(",", parts);
        }
        return String.valueOf(value);
    }

    private static final class MultipartBody {
        private final String boundary;
        private final byte[] bytes;

        private MultipartBody(String boundary, byte[] bytes) {
            this.boundary = boundary;
            this.bytes = bytes;
        }
    }
}
