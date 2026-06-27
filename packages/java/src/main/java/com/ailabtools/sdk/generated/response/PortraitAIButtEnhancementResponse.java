package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Butt Enhancement API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIButtEnhancementResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIButtEnhancementResponseData data;

    public PortraitAIButtEnhancementResponseData getData() { return data; }
}
