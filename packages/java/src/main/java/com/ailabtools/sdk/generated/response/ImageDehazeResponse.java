package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Image Dehaze API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageDehazeResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageDehazeResponseData data;

    public ImageDehazeResponseData getData() { return data; }
}
