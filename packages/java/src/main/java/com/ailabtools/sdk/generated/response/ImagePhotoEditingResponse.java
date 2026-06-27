package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Photo Retouch API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImagePhotoEditingResponse extends BaseResponse {
    @JsonProperty("data")
    private ImagePhotoEditingResponseData data;

    public ImagePhotoEditingResponseData getData() { return data; }
}
