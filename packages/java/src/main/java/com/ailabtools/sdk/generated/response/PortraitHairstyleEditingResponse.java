package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Hairstyle Changer API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitHairstyleEditingResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitHairstyleEditingResponseData data;

    public PortraitHairstyleEditingResponseData getData() { return data; }
}
