package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Food Background Removal API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CutoutFoodBackgroundRemovalResponse extends BaseResponse {
    @JsonProperty("data")
    private CutoutFoodBackgroundRemovalResponseData data;

    public CutoutFoodBackgroundRemovalResponseData getData() { return data; }
}
