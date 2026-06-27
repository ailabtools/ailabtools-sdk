package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Halloween Mask API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIHalloweenMaskResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIHalloweenMaskResponseData data;

    public PortraitAIHalloweenMaskResponseData getData() { return data; }
}
