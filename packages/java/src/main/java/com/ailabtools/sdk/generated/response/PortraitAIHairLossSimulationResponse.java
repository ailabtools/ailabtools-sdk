package com.ailabtools.sdk.generated.response;

import com.ailabtools.sdk.response.BaseResponse;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

/** Typed response for AI Hair Loss Simulation API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitAIHairLossSimulationResponse extends BaseResponse {
    @JsonProperty("data")
    private PortraitAIHairLossSimulationResponseData data;

    public PortraitAIHairLossSimulationResponseData getData() { return data; }
}
