package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Hairstyle Changer Premium API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitHairstyleEditingPremiumResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitHairstyleEditingPremiumResponseData data;

    public PortraitHairstyleEditingPremiumResponseData getData() { return data; }
}
