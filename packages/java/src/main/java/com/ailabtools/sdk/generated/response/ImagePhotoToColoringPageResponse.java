package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Photo to Coloring Page API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImagePhotoToColoringPageResponse extends BaseResponse {
    @JsonProperty("data")
    private ImagePhotoToColoringPageResponseData data;

    public ImagePhotoToColoringPageResponseData getData() { return data; }
}
