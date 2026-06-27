package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Cartoon Generator API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageAICartoonGeneratorResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageAICartoonGeneratorResponseData data;

    public ImageAICartoonGeneratorResponseData getData() { return data; }
}
