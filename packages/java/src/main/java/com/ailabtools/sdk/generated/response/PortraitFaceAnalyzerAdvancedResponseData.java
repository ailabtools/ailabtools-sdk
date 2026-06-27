package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Map;

/** Response data for Face Analyzer Advanced API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFaceAnalyzerAdvancedResponseData {
    @JsonProperty("pupils")
    private List<Double> pupils;
    @JsonProperty("gender_list")
    private List<Integer> genderList;
    @JsonProperty("expressions")
    private List<Integer> expressions;
    @JsonProperty("face_count")
    private Integer faceCount;
    @JsonProperty("landmarks")
    private List<Double> landmarks;
    @JsonProperty("landmark_count")
    private Integer landmarkCount;
    @JsonProperty("beauty_list")
    private List<Double> beautyList;
    @JsonProperty("hat_list")
    private List<Integer> hatList;
    @JsonProperty("face_probability_list")
    private List<Double> faceProbabilityList;
    @JsonProperty("glasses")
    private List<Integer> glasses;
    @JsonProperty("face_rectangles")
    private List<Integer> faceRectangles;
    @JsonProperty("pose_list")
    private List<Double> poseList;
    @JsonProperty("age_list")
    private List<Integer> ageList;
    @JsonProperty("dense_feature_length")
    private Integer denseFeatureLength;
    @JsonProperty("masks")
    private List<Integer> masks;
    @JsonProperty("qualities")
    private Map<String, Object> qualities;
    @JsonProperty("score_list")
    private List<Double> scoreList;
    @JsonProperty("blur_list")
    private List<Double> blurList;
    @JsonProperty("fnf_list")
    private List<Double> fnfList;
    @JsonProperty("glass_list")
    private List<Double> glassList;
    @JsonProperty("illu_list")
    private List<Double> illuList;
    @JsonProperty("mask_list")
    private List<Double> maskList;
    @JsonProperty("noise_list")
    private List<Double> noiseList;

    public List<Double> getPupils() { return pupils; }
    public List<Integer> getGenderList() { return genderList; }
    public List<Integer> getExpressions() { return expressions; }
    public Integer getFaceCount() { return faceCount; }
    public List<Double> getLandmarks() { return landmarks; }
    public Integer getLandmarkCount() { return landmarkCount; }
    public List<Double> getBeautyList() { return beautyList; }
    public List<Integer> getHatList() { return hatList; }
    public List<Double> getFaceProbabilityList() { return faceProbabilityList; }
    public List<Integer> getGlasses() { return glasses; }
    public List<Integer> getFaceRectangles() { return faceRectangles; }
    public List<Double> getPoseList() { return poseList; }
    public List<Integer> getAgeList() { return ageList; }
    public Integer getDenseFeatureLength() { return denseFeatureLength; }
    public List<Integer> getMasks() { return masks; }
    public Map<String, Object> getQualities() { return qualities; }
    public List<Double> getScoreList() { return scoreList; }
    public List<Double> getBlurList() { return blurList; }
    public List<Double> getFnfList() { return fnfList; }
    public List<Double> getGlassList() { return glassList; }
    public List<Double> getIlluList() { return illuList; }
    public List<Double> getMaskList() { return maskList; }
    public List<Double> getNoiseList() { return noiseList; }
}
