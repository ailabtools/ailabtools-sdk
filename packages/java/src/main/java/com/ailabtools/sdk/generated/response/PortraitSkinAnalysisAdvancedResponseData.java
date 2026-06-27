package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Map;

/** Response data for Skin Analyze Advanced API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitSkinAnalysisAdvancedResponseData {
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
    @JsonProperty("skin_color")
    private Map<String, Object> skinColor;
    @JsonProperty("value")
    private Integer value;
    @JsonProperty("confidence")
    private Double confidence;
    @JsonProperty("skintone_ita")
    private Map<String, Object> skintoneIta;
    @JsonProperty("ITA")
    private Double iTA;
    @JsonProperty("skintone")
    private Integer skintone;
    @JsonProperty("skin_hue_ha")
    private Map<String, Object> skinHueHa;
    @JsonProperty("HA")
    private Double hA;
    @JsonProperty("skin_age")
    private Map<String, Object> skinAge;
    @JsonProperty("left_eyelids")
    private Map<String, Object> leftEyelids;
    @JsonProperty("right_eyelids")
    private Map<String, Object> rightEyelids;
    @JsonProperty("eye_pouch")
    private Map<String, Object> eyePouch;
    @JsonProperty("eye_pouch_severity")
    private Map<String, Object> eyePouchSeverity;
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
    @JsonProperty("nasolabial_fold_severity")
    private Map<String, Object> nasolabialFoldSeverity;
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
    @JsonProperty("rectangle")
    private List<Object> rectangle;
    @JsonProperty("mole")
    private Map<String, Object> mole;
    @JsonProperty("closed_comedones")
    private Map<String, Object> closedComedones;
    @JsonProperty("skin_spot")
    private Map<String, Object> skinSpot;
    @JsonProperty("face_maps")
    private Map<String, Object> faceMaps;
    @JsonProperty("red_area")
    private String redArea;
    @JsonProperty("sensitivity")
    private Map<String, Object> sensitivity;
    @JsonProperty("sensitivity_area")
    private Double sensitivityArea;
    @JsonProperty("sensitivity_intensity")
    private Double sensitivityIntensity;

    public List<Object> getWarning() { return warning; }
    public Map<String, Object> getFaceRectangle() { return faceRectangle; }
    public Double getTop() { return top; }
    public Double getLeft() { return left; }
    public Double getWidth() { return width; }
    public Double getHeight() { return height; }
    public Map<String, Object> getResult() { return result; }
    public Map<String, Object> getSkinColor() { return skinColor; }
    public Integer getValue() { return value; }
    public Double getConfidence() { return confidence; }
    public Map<String, Object> getSkintoneIta() { return skintoneIta; }
    public Double getITA() { return iTA; }
    public Integer getSkintone() { return skintone; }
    public Map<String, Object> getSkinHueHa() { return skinHueHa; }
    public Double getHA() { return hA; }
    public Map<String, Object> getSkinAge() { return skinAge; }
    public Map<String, Object> getLeftEyelids() { return leftEyelids; }
    public Map<String, Object> getRightEyelids() { return rightEyelids; }
    public Map<String, Object> getEyePouch() { return eyePouch; }
    public Map<String, Object> getEyePouchSeverity() { return eyePouchSeverity; }
    public Map<String, Object> getDarkCircle() { return darkCircle; }
    public Map<String, Object> getForeheadWrinkle() { return foreheadWrinkle; }
    public Map<String, Object> getCrowsFeet() { return crowsFeet; }
    public Map<String, Object> getEyeFinelines() { return eyeFinelines; }
    public Map<String, Object> getGlabellaWrinkle() { return glabellaWrinkle; }
    public Map<String, Object> getNasolabialFold() { return nasolabialFold; }
    public Map<String, Object> getNasolabialFoldSeverity() { return nasolabialFoldSeverity; }
    public Map<String, Object> getSkinType() { return skinType; }
    public Map<String, Object> getDetails() { return details; }
    public Map<String, Object> getPoresForehead() { return poresForehead; }
    public Map<String, Object> getPoresLeftCheek() { return poresLeftCheek; }
    public Map<String, Object> getPoresRightCheek() { return poresRightCheek; }
    public Map<String, Object> getPoresJaw() { return poresJaw; }
    public Map<String, Object> getBlackhead() { return blackhead; }
    public Map<String, Object> getAcne() { return acne; }
    public List<Object> getRectangle() { return rectangle; }
    public Map<String, Object> getMole() { return mole; }
    public Map<String, Object> getClosedComedones() { return closedComedones; }
    public Map<String, Object> getSkinSpot() { return skinSpot; }
    public Map<String, Object> getFaceMaps() { return faceMaps; }
    public String getRedArea() { return redArea; }
    public Map<String, Object> getSensitivity() { return sensitivity; }
    public Double getSensitivityArea() { return sensitivityArea; }
    public Double getSensitivityIntensity() { return sensitivityIntensity; }
}
