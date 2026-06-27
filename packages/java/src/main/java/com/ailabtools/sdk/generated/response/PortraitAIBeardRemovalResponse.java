package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Beard Removal API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIBeardRemovalResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIBeardRemovalResponseData data;

    public PortraitAIBeardRemovalResponseData getData() { return data; }
}
