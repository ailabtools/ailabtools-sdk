package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Remove Objects API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageRemoveObjectsResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageRemoveObjectsResponseData data;

    public ImageRemoveObjectsResponseData getData() { return data; }
}
