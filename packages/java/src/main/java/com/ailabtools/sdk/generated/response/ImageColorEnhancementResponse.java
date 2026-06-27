package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Image Color Enhancement API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageColorEnhancementResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageColorEnhancementResponseData data;

    public ImageColorEnhancementResponseData getData() { return data; }
}
