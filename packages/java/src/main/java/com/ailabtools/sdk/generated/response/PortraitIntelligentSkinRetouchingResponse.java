package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Skin Beauty API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitIntelligentSkinRetouchingResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitIntelligentSkinRetouchingResponseData data;

    public PortraitIntelligentSkinRetouchingResponseData getData() { return data; }
}
