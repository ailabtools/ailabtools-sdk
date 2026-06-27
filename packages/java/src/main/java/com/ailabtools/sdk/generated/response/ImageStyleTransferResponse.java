package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Photo to Painting API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class ImageStyleTransferResponse extends BaseResponse {
    @JsonProperty("data")
    private ImageStyleTransferResponseData data;

    public ImageStyleTransferResponseData getData() { return data; }
}
