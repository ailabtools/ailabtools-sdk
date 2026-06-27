package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

/** Response data for HD Human Background Removal API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class CutoutHdHumanBodyBackgroundRemovalResponseData {
    @JsonProperty("elements")
    private List<CutoutHdHumanBodyBackgroundRemovalElement> elements;
    public List<CutoutHdHumanBodyBackgroundRemovalElement> getElements() { return elements; }
}
