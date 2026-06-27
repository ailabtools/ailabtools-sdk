package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Image Extender API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageAiImageExtenderResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageAiImageExtenderResponseData data;

    public ImageAiImageExtenderResponseData getData() { return data; }
}
