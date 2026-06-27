package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Emoji Generator API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageAIEmojiGeneratorResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageAIEmojiGeneratorResponseData data;

    public ImageAIEmojiGeneratorResponseData getData() { return data; }
}
