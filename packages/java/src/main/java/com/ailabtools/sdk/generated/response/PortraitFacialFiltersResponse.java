package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for Face Filters API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFacialFiltersResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitFacialFiltersResponseData data;

    public PortraitFacialFiltersResponseData getData() { return data; }
}
