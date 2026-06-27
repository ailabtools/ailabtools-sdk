package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Big Head Effect API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIBigHeadEffectResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIBigHeadEffectResponseData data;

    public PortraitAIBigHeadEffectResponseData getData() { return data; }
}
