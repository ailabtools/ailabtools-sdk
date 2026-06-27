package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Photo Colorize API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageColoringResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageColoringResponseData data;

    public ImageColoringResponseData getData() { return data; }
}
