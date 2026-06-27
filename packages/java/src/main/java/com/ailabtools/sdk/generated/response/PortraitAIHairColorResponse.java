package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Hair Color API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIHairColorResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIHairColorResponseData data;

    public PortraitAIHairColorResponseData getData() { return data; }
}
