package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Image Invisible Picture Watermark API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageInvisibleImageWatermarkResponseData {
    @JsonProperty("watermark_image_url")
    private String watermarkImageUrl;
    @JsonProperty("logo_url")
    private String logoUrl;

    public String getWatermarkImageUrl() { return watermarkImageUrl; }
    public String getLogoUrl() { return logoUrl; }
}
