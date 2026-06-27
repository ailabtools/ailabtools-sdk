package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Costume Background Removal API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CutoutClothingBackgroundRemovalResponse extends BaseResponse {
    @JsonProperty("data")
    private CutoutClothingBackgroundRemovalResponseData data;

    public CutoutClothingBackgroundRemovalResponseData getData() { return data; }
}
