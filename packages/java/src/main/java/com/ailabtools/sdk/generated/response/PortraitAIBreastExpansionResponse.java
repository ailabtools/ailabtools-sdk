package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Breast Expansion API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIBreastExpansionResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIBreastExpansionResponseData data;

    public PortraitAIBreastExpansionResponseData getData() { return data; }
}
