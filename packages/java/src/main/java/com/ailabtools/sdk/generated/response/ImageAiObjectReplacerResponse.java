package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Object Replacer API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageAiObjectReplacerResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageAiObjectReplacerResponseData data;

    public ImageAiObjectReplacerResponseData getData() { return data; }
}
