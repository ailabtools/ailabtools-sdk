package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Try on Clothes Premium API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitTryOnClothesPremiumResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitTryOnClothesPremiumResponseData data;

    public PortraitTryOnClothesPremiumResponseData getData() { return data; }
}
