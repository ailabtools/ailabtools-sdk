package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Remove Objects Advanced API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageRemoveObjectsAdvancedResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageRemoveObjectsAdvancedResponseData data;

    public ImageRemoveObjectsAdvancedResponseData getData() { return data; }
}
