package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for HD Universal Background Removal API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CutoutHDUniversalBackgroundRemovalResponse extends BaseResponse {
    @JsonProperty("data")
    private CutoutHDUniversalBackgroundRemovalResponseData data;

    public CutoutHDUniversalBackgroundRemovalResponseData getData() { return data; }
}
