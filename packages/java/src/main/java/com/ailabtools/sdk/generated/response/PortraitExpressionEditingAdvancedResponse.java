package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Change Facial Expressions Advanced API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitExpressionEditingAdvancedResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitExpressionEditingAdvancedResponseData data;

    public PortraitExpressionEditingAdvancedResponseData getData() { return data; }
}
