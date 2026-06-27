package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Remove Objects Pro API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageRemoveObjectsProResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageRemoveObjectsProResponseData data;

    public ImageRemoveObjectsProResponseData getData() { return data; }
}
