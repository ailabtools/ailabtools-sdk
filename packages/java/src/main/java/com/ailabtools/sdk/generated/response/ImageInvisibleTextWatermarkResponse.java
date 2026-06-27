package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Image Invisible Text Watermark API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageInvisibleTextWatermarkResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageInvisibleTextWatermarkResponseData data;

    public ImageInvisibleTextWatermarkResponseData getData() { return data; }
}
