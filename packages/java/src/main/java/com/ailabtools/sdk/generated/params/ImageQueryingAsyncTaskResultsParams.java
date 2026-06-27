package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Querying Async Task Results API. */
public final class ImageQueryingAsyncTaskResultsParams implements RequestParams {
    private final String jobId;
    private final String type;

    private ImageQueryingAsyncTaskResultsParams(Builder builder) {
        this.jobId = builder.jobId;
        this.type = builder.type;
    }

    public static Builder builder() { return new Builder(); }

    public String getJobId() { return jobId; }
    public String getType() { return type; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("job_id", jobId);
        values.put("type", type);
        return values;
    }

    public static final class Builder {
        private String jobId;
        private String type;

        public Builder jobId(String jobId) {
            this.jobId = jobId;
            return this;
        }

        public Builder type(String type) {
            this.type = type;
            return this;
        }

        public ImageQueryingAsyncTaskResultsParams build() {
            Objects.requireNonNull(jobId, "jobId");
            Objects.requireNonNull(type, "type");
            return new ImageQueryingAsyncTaskResultsParams(this);
        }
    }
}
