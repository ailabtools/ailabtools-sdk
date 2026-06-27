package com.ailabtools.sdk;

import com.ailabtools.sdk.api.BackgroundApi;
import com.ailabtools.sdk.api.CommonApi;
import com.ailabtools.sdk.api.CutoutApi;
import com.ailabtools.sdk.api.ImageApi;
import com.ailabtools.sdk.api.PortraitApi;
import com.ailabtools.sdk.exception.SdkException;
import com.ailabtools.sdk.generated.params.CommonQueryAsyncTaskResultParams;
import com.ailabtools.sdk.generated.response.CommonQueryAsyncTaskResultResponse;
import com.ailabtools.sdk.http.Requester;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.net.http.HttpClient;
import java.time.Duration;
import java.util.Objects;

/** Entry point for the AILabTools Java SDK. */
public final class AILabClient {
    private final CommonApi common;
    private final CutoutApi cutout;
    private final ImageApi image;
    private final PortraitApi portrait;
    private final BackgroundApi background;

    public AILabClient(String apiKey) {
        this(builder(apiKey));
    }

    private AILabClient(Builder builder) {
        Requester requester = new Requester(
                builder.httpClient,
                builder.objectMapper,
                builder.apiKey,
                builder.baseUrl,
                builder.timeout);
        this.common = new CommonApi(requester);
        this.cutout = new CutoutApi(requester);
        this.image = new ImageApi(requester);
        this.portrait = new PortraitApi(requester);
        this.background = new BackgroundApi(cutout);
    }

    public static Builder builder(String apiKey) {
        return new Builder(apiKey);
    }

    public CommonApi common() { return common; }
    public CutoutApi cutout() { return cutout; }
    public ImageApi image() { return image; }
    public PortraitApi portrait() { return portrait; }
    public BackgroundApi background() { return background; }

    public CommonQueryAsyncTaskResultResponse waitForTask(String taskId) {
        return waitForTask(taskId, Duration.ofSeconds(5), Duration.ofMinutes(5), true);
    }

    public CommonQueryAsyncTaskResultResponse waitForTask(
            String taskId,
            Duration interval,
            Duration timeout,
            boolean throwOnFailed) {
        Objects.requireNonNull(taskId, "taskId");
        long deadline = System.nanoTime() + timeout.toNanos();
        while (System.nanoTime() <= deadline) {
            CommonQueryAsyncTaskResultResponse result = common.commonQueryAsyncTaskResult(
                    CommonQueryAsyncTaskResultParams.builder().taskId(taskId).build());
            Integer status = result.getData() == null
                    ? result.getTaskStatus()
                    : result.getData().getTaskStatus();
            if (Integer.valueOf(2).equals(status)) return result;
            if (Integer.valueOf(3).equals(status)) {
                if (throwOnFailed) throw new SdkException("AILabTools task failed: " + taskId);
                return result;
            }
            try {
                if (!interval.isZero() && !interval.isNegative()) {
                    Thread.sleep(interval.toMillis());
                }
            } catch (InterruptedException error) {
                Thread.currentThread().interrupt();
                throw new SdkException("AILabTools task polling was interrupted", error);
            }
        }
        throw new SdkException("AILabTools task timed out: " + taskId);
    }

    /** Configures an AILabTools client. */
    public static final class Builder {
        private final String apiKey;
        private String baseUrl = "https://www.ailabapi.com";
        private Duration timeout = Duration.ofSeconds(30);
        private HttpClient httpClient = HttpClient.newHttpClient();
        private ObjectMapper objectMapper = new ObjectMapper();

        private Builder(String apiKey) {
            if (apiKey == null || apiKey.isEmpty()) {
                throw new IllegalArgumentException("AILabTools API key must not be empty");
            }
            this.apiKey = apiKey;
        }

        public Builder baseUrl(String baseUrl) {
            this.baseUrl = Objects.requireNonNull(baseUrl, "baseUrl");
            return this;
        }

        public Builder timeout(Duration timeout) {
            this.timeout = Objects.requireNonNull(timeout, "timeout");
            return this;
        }

        public Builder httpClient(HttpClient httpClient) {
            this.httpClient = Objects.requireNonNull(httpClient, "httpClient");
            return this;
        }

        public Builder objectMapper(ObjectMapper objectMapper) {
            this.objectMapper = Objects.requireNonNull(objectMapper, "objectMapper");
            return this;
        }

        public AILabClient build() {
            return new AILabClient(this);
        }
    }
}
