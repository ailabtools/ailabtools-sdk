package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Image Upscaler API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageLosslessEnlargementResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageLosslessEnlargementResponseData data;

    public ImageLosslessEnlargementResponseData getData() { return data; }
}
