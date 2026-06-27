package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Nail Art API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageAINailArtResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageAINailArtResponseData data;

    public ImageAINailArtResponseData getData() { return data; }
}
