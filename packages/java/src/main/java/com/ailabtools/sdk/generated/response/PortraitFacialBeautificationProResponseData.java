package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Face Beauty Pro API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFacialBeautificationProResponseData {
    @JsonProperty("task_type")
    private String taskType;
    @JsonProperty("result")
    private String result;

    public String getTaskType() { return taskType; }
    public String getResult() { return result; }
}
