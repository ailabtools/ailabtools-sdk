package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Product Background Removal API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CutoutProductBackgroundRemovalResponse extends BaseResponse {
    @JsonProperty("data")
    private CutoutProductBackgroundRemovalResponseData data;

    public CutoutProductBackgroundRemovalResponseData getData() { return data; }
}
