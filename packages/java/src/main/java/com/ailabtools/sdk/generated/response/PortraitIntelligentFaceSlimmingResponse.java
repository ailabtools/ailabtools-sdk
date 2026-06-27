package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Face Slimming API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitIntelligentFaceSlimmingResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitIntelligentFaceSlimmingResponseData data;

    public PortraitIntelligentFaceSlimmingResponseData getData() { return data; }
}
