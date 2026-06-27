package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Hairstyle Extraction API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CutoutHairExtractionResponse extends BaseResponse {
    @JsonProperty("data")
    private CutoutHairExtractionResponseData data;

    public CutoutHairExtractionResponseData getData() { return data; }
}
