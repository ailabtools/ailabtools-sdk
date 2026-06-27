package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Eyelashes API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIEyelashesResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIEyelashesResponseData data;

    public PortraitAIEyelashesResponseData getData() { return data; }
}
