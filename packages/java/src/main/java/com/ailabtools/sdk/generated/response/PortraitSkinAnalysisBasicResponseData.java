package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Map;

/** Response data for Skin Analyze API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitSkinAnalysisBasicResponseData {
    @JsonProperty("warning")
    private List<Object> warning;
    @JsonProperty("face_rectangle")
    private Map<String, Object> faceRectangle;
    @JsonProperty("top")
    private Double top;
    @JsonProperty("left")
    private Double left;
    @JsonProperty("width")
    private Double width;
    @JsonProperty("height")
    private Double height;
    @JsonProperty("result")
    private Map<String, Object> result;
    @JsonProperty("left_eyelids")
    private Map<String, Object> leftEyelids;
    @JsonProperty("value")
    private Integer value;
    @JsonProperty("confidence")
    private Double confidence;
    @JsonProperty("right_eyelids")
    private Map<String, Object> rightEyelids;
    @JsonProperty("eye_pouch")
    private Map<String, Object> eyePouch;
    @JsonProperty("dark_circle")
    private Map<String, Object> darkCircle;
    @JsonProperty("forehead_wrinkle")
    private Map<String, Object> foreheadWrinkle;
    @JsonProperty("crows_feet")
    private Map<String, Object> crowsFeet;
    @JsonProperty("eye_finelines")
    private Map<String, Object> eyeFinelines;
    @JsonProperty("glabella_wrinkle")
    private Map<String, Object> glabellaWrinkle;
    @JsonProperty("nasolabial_fold")
    private Map<String, Object> nasolabialFold;
    @JsonProperty("skin_type")
    private Map<String, Object> skinType;
    @JsonProperty("details")
    private Map<String, Object> details;
    @JsonProperty("pores_forehead")
    private Map<String, Object> poresForehead;
    @JsonProperty("pores_left_cheek")
    private Map<String, Object> poresLeftCheek;
    @JsonProperty("pores_right_cheek")
    private Map<String, Object> poresRightCheek;
    @JsonProperty("pores_jaw")
    private Map<String, Object> poresJaw;
    @JsonProperty("blackhead")
    private Map<String, Object> blackhead;
    @JsonProperty("acne")
    private Map<String, Object> acne;
    @JsonProperty("mole")
    private Map<String, Object> mole;
    @JsonProperty("skin_spot")
    private Map<String, Object> skinSpot;

    public List<Object> getWarning() { return warning; }
    public Map<String, Object> getFaceRectangle() { return faceRectangle; }
    public Double getTop() { return top; }
    public Double getLeft() { return left; }
    public Double getWidth() { return width; }
    public Double getHeight() { return height; }
    public Map<String, Object> getResult() { return result; }
    public Map<String, Object> getLeftEyelids() { return leftEyelids; }
    public Integer getValue() { return value; }
    public Double getConfidence() { return confidence; }
    public Map<String, Object> getRightEyelids() { return rightEyelids; }
    public Map<String, Object> getEyePouch() { return eyePouch; }
    public Map<String, Object> getDarkCircle() { return darkCircle; }
    public Map<String, Object> getForeheadWrinkle() { return foreheadWrinkle; }
    public Map<String, Object> getCrowsFeet() { return crowsFeet; }
    public Map<String, Object> getEyeFinelines() { return eyeFinelines; }
    public Map<String, Object> getGlabellaWrinkle() { return glabellaWrinkle; }
    public Map<String, Object> getNasolabialFold() { return nasolabialFold; }
    public Map<String, Object> getSkinType() { return skinType; }
    public Map<String, Object> getDetails() { return details; }
    public Map<String, Object> getPoresForehead() { return poresForehead; }
    public Map<String, Object> getPoresLeftCheek() { return poresLeftCheek; }
    public Map<String, Object> getPoresRightCheek() { return poresRightCheek; }
    public Map<String, Object> getPoresJaw() { return poresJaw; }
    public Map<String, Object> getBlackhead() { return blackhead; }
    public Map<String, Object> getAcne() { return acne; }
    public Map<String, Object> getMole() { return mole; }
    public Map<String, Object> getSkinSpot() { return skinSpot; }
}
