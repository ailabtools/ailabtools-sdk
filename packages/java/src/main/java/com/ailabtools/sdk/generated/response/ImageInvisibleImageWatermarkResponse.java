package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Image Invisible Picture Watermark API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageInvisibleImageWatermarkResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageInvisibleImageWatermarkResponseData data;

    public ImageInvisibleImageWatermarkResponseData getData() { return data; }
}
