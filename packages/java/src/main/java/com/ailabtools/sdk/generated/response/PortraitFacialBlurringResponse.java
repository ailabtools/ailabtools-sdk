package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Face Blur API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFacialBlurringResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitFacialBlurringResponseData data;

    public PortraitFacialBlurringResponseData getData() { return data; }
}
