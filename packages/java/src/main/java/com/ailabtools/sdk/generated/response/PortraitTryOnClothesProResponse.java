package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Try on Clothes Pro API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitTryOnClothesProResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitTryOnClothesProResponseData data;

    public PortraitTryOnClothesProResponseData getData() { return data; }
}
