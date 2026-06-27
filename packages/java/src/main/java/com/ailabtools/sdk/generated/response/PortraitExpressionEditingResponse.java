package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Change Facial Expressions API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitExpressionEditingResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitExpressionEditingResponseData data;

    public PortraitExpressionEditingResponseData getData() { return data; }
}
