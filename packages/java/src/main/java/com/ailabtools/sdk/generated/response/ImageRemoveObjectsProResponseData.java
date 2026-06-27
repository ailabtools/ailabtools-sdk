package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Response data for Remove Objects Pro API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageRemoveObjectsProResponseData {
    @JsonProperty("image_url")
    private String imageUrl;

    public String getImageUrl() { return imageUrl; }
}
