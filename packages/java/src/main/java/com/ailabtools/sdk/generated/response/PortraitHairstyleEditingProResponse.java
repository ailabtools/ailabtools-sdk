package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Hairstyle Changer Pro API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitHairstyleEditingProResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitHairstyleEditingProResponseData data;

    public PortraitHairstyleEditingProResponseData getData() { return data; }
}
