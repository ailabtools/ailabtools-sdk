package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Waist Slimming API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIWaistSlimmingResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIWaistSlimmingResponseData data;

    public PortraitAIWaistSlimmingResponseData getData() { return data; }
}
