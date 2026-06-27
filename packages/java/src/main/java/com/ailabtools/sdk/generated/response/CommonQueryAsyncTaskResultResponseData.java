package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Querying Async Task Results API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CommonQueryAsyncTaskResultResponseData {
    @JsonProperty("task_status")
    private Integer taskStatus;

    public Integer getTaskStatus() { return taskStatus; }
}
