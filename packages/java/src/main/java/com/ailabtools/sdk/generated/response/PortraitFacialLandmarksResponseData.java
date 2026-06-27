package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Map;

/** Response data for Facial Landmarks API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFacialLandmarksResponseData {
    @JsonProperty("result")
    private Map<String, Object> result;
    @JsonProperty("face_num")
    private Integer faceNum;
    @JsonProperty("face_list")
    private List<Object> faceList;
    @JsonProperty("face_token")
    private String faceToken;
    @JsonProperty("location")
    private Map<String, Object> location;
    @JsonProperty("left")
    private Double left;
    @JsonProperty("top")
    private Double top;
    @JsonProperty("width")
    private Double width;
    @JsonProperty("height")
    private Double height;
    @JsonProperty("rotation")
    private Integer rotation;
    @JsonProperty("face_probability")
    private Double faceProbability;
    @JsonProperty("angle")
    private Map<String, Object> angle;
    @JsonProperty("yaw")
    private Double yaw;
    @JsonProperty("pitch")
    private Double pitch;
    @JsonProperty("roll")
    private Double roll;
    @JsonProperty("age")
    private Double age;
    @JsonProperty("gender")
    private Map<String, Object> gender;
    @JsonProperty("type")
    private String type;
    @JsonProperty("probability")
    private Double probability;
    @JsonProperty("landmark4")
    private List<Object> landmark4;
    @JsonProperty("landmark72")
    private List<Object> landmark72;
    @JsonProperty("landmark150")
    private Map<String, Object> landmark150;
    @JsonProperty("landmark201")
    private Map<String, Object> landmark201;

    public Map<String, Object> getResult() { return result; }
    public Integer getFaceNum() { return faceNum; }
    public List<Object> getFaceList() { return faceList; }
    public String getFaceToken() { return faceToken; }
    public Map<String, Object> getLocation() { return location; }
    public Double getLeft() { return left; }
    public Double getTop() { return top; }
    public Double getWidth() { return width; }
    public Double getHeight() { return height; }
    public Integer getRotation() { return rotation; }
    public Double getFaceProbability() { return faceProbability; }
    public Map<String, Object> getAngle() { return angle; }
    public Double getYaw() { return yaw; }
    public Double getPitch() { return pitch; }
    public Double getRoll() { return roll; }
    public Double getAge() { return age; }
    public Map<String, Object> getGender() { return gender; }
    public String getType() { return type; }
    public Double getProbability() { return probability; }
    public List<Object> getLandmark4() { return landmark4; }
    public List<Object> getLandmark72() { return landmark72; }
    public Map<String, Object> getLandmark150() { return landmark150; }
    public Map<String, Object> getLandmark201() { return landmark201; }
}
