package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Try on Clothes API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitTryOnClothesResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitTryOnClothesResponseData data;

    public PortraitTryOnClothesResponseData getData() { return data; }
}
