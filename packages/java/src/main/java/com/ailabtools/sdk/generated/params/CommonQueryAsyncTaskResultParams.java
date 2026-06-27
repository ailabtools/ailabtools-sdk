package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Querying Async Task Results API. */
public final class CommonQueryAsyncTaskResultParams implements RequestParams {
    private final String taskId;

    private CommonQueryAsyncTaskResultParams(Builder builder) {
        this.taskId = builder.taskId;
    }

    public static Builder builder() { return new Builder(); }

    public String getTaskId() { return taskId; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("task_id", taskId);
        return values;
    }

    public static final class Builder {
        private String taskId;

        public Builder taskId(String taskId) {
            this.taskId = taskId;
            return this;
        }

        public CommonQueryAsyncTaskResultParams build() {
            Objects.requireNonNull(taskId, "taskId");
            return new CommonQueryAsyncTaskResultParams(this);
        }
    }
}
