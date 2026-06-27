package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Image Invisible Text Watermark API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageInvisibleTextWatermarkResponseData {
    @JsonProperty("watermark_image_url")
    private String watermarkImageUrl;
    @JsonProperty("text_image_url")
    private String textImageUrl;

    public String getWatermarkImageUrl() { return watermarkImageUrl; }
    public String getTextImageUrl() { return textImageUrl; }
}
