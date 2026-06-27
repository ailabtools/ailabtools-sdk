package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Universal Background Removal API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CutoutUniversalBackgroundRemovalResponse extends BaseResponse {
    @JsonProperty("data")
    private CutoutUniversalBackgroundRemovalResponseData data;

    public CutoutUniversalBackgroundRemovalResponseData getData() { return data; }
}
