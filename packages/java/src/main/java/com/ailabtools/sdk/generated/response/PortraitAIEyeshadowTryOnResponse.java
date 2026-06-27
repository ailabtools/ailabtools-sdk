package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Eyeshadow Try-On API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIEyeshadowTryOnResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIEyeshadowTryOnResponseData data;

    public PortraitAIEyeshadowTryOnResponseData getData() { return data; }
}
