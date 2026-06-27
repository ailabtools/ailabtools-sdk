package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.Map;

/** Response data for Skin Analyze Pro API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitSkinAnalysisProfessionalResponseData {
    @JsonProperty("left_side_result")
    private String leftSideResult;
    @JsonProperty("right_side_result")
    private String rightSideResult;
    @JsonProperty("face_rectangle")
    private Map<String, Object> faceRectangle;
    @JsonProperty("result")
    private Map<String, Object> result;

    public String getLeftSideResult() { return leftSideResult; }
    public String getRightSideResult() { return rightSideResult; }
    public Map<String, Object> getFaceRectangle() { return faceRectangle; }
    public Map<String, Object> getResult() { return result; }
}
