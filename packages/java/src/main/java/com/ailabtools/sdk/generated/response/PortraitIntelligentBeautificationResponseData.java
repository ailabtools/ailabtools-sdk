package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Smart Beauty API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitIntelligentBeautificationResponseData {
    @JsonProperty("task_type")
    private String taskType;
    @JsonProperty("image")
    private String image;

    public String getTaskType() { return taskType; }
    public String getImage() { return image; }
}
