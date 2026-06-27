package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Lip Bite Expressions API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAILipBiteExpressionsResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAILipBiteExpressionsResponseData data;

    public PortraitAILipBiteExpressionsResponseData getData() { return data; }
}
