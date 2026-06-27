package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Try on Clothes Refiner API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitTryOnClothesRefinerResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitTryOnClothesRefinerResponseData data;

    public PortraitTryOnClothesRefinerResponseData getData() { return data; }
}
