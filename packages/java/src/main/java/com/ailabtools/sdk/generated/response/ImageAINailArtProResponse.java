package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Nail Art Pro API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageAINailArtProResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageAINailArtProResponseData data;

    public ImageAINailArtProResponseData getData() { return data; }
}
