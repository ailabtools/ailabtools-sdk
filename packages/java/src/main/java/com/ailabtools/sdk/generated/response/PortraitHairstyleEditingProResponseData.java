package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Hairstyle Changer Pro API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitHairstyleEditingProResponseData {
    @JsonProperty("task_type")
    private String taskType;
    @JsonProperty("task_id")
    private String taskId;

    public String getTaskType() { return taskType; }
    public String getTaskId() { return taskId; }
}
