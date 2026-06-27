package com.ailabtools.sdk.generated.response;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Map;

/** Response data for Face Analyzer API. */
@JsonIgnoreProperties(ignoreUnknown = true)
public final class PortraitFaceAnalyzerResponseData {
    @JsonProperty("image_width")
    private Integer imageWidth;
    @JsonProperty("image_height")
    private Integer imageHeight;
    @JsonProperty("face_detail_infos")
    private List<Object> faceDetailInfos;
    @JsonProperty("face_rect")
    private Map<String, Object> faceRect;
    @JsonProperty("x")
    private Integer x;
    @JsonProperty("y")
    private Integer y;
    @JsonProperty("width")
    private Integer width;
    @JsonProperty("height")
    private Integer height;
    @JsonProperty("face_detail_attributes_info")
    private Map<String, Object> faceDetailAttributesInfo;
    @JsonProperty("age")
    private Integer age;
    @JsonProperty("beauty")
    private Integer beauty;
    @JsonProperty("emotion")
    private Map<String, Object> emotion;
    @JsonProperty("type")
    private Integer type;
    @JsonProperty("probability")
    private Double probability;
    @JsonProperty("eye")
    private Map<String, Object> eye;
    @JsonProperty("glass")
    private Map<String, Object> glass;
    @JsonProperty("eye_open")
    private Map<String, Object> eyeOpen;
    @JsonProperty("eyelid_type")
    private Map<String, Object> eyelidType;
    @JsonProperty("eye_size")
    private Map<String, Object> eyeSize;
    @JsonProperty("eyebrow")
    private Map<String, Object> eyebrow;
    @JsonProperty("eyebrow_density")
    private Map<String, Object> eyebrowDensity;
    @JsonProperty("eyebrow_curve")
    private Map<String, Object> eyebrowCurve;
    @JsonProperty("eyebrow_length")
    private Map<String, Object> eyebrowLength;
    @JsonProperty("gender")
    private Map<String, Object> gender;
    @JsonProperty("hair")
    private Map<String, Object> hair;
    @JsonProperty("length")
    private Map<String, Object> length;
    @JsonProperty("bang")
    private Map<String, Object> bang;
    @JsonProperty("color")
    private Map<String, Object> color;
    @JsonProperty("hat")
    private Map<String, Object> hat;
    @JsonProperty("style")
    private Map<String, Object> style;
    @JsonProperty("head_pose")
    private Map<String, Object> headPose;
    @JsonProperty("pitch")
    private Integer pitch;
    @JsonProperty("yaw")
    private Integer yaw;
    @JsonProperty("mask")
    private Map<String, Object> mask;
    @JsonProperty("mouth")
    private Map<String, Object> mouth;
    @JsonProperty("mouth_open")
    private Map<String, Object> mouthOpen;
    @JsonProperty("moustache")
    private Map<String, Object> moustache;
    @JsonProperty("nose")
    private Map<String, Object> nose;
    @JsonProperty("shape")
    private Map<String, Object> shape;
    @JsonProperty("skin")
    private Map<String, Object> skin;
    @JsonProperty("smile")
    private Integer smile;

    public Integer getImageWidth() { return imageWidth; }
    public Integer getImageHeight() { return imageHeight; }
    public List<Object> getFaceDetailInfos() { return faceDetailInfos; }
    public Map<String, Object> getFaceRect() { return faceRect; }
    public Integer getX() { return x; }
    public Integer getY() { return y; }
    public Integer getWidth() { return width; }
    public Integer getHeight() { return height; }
    public Map<String, Object> getFaceDetailAttributesInfo() { return faceDetailAttributesInfo; }
    public Integer getAge() { return age; }
    public Integer getBeauty() { return beauty; }
    public Map<String, Object> getEmotion() { return emotion; }
    public Integer getType() { return type; }
    public Double getProbability() { return probability; }
    public Map<String, Object> getEye() { return eye; }
    public Map<String, Object> getGlass() { return glass; }
    public Map<String, Object> getEyeOpen() { return eyeOpen; }
    public Map<String, Object> getEyelidType() { return eyelidType; }
    public Map<String, Object> getEyeSize() { return eyeSize; }
    public Map<String, Object> getEyebrow() { return eyebrow; }
    public Map<String, Object> getEyebrowDensity() { return eyebrowDensity; }
    public Map<String, Object> getEyebrowCurve() { return eyebrowCurve; }
    public Map<String, Object> getEyebrowLength() { return eyebrowLength; }
    public Map<String, Object> getGender() { return gender; }
    public Map<String, Object> getHair() { return hair; }
    public Map<String, Object> getLength() { return length; }
    public Map<String, Object> getBang() { return bang; }
    public Map<String, Object> getColor() { return color; }
    public Map<String, Object> getHat() { return hat; }
    public Map<String, Object> getStyle() { return style; }
    public Map<String, Object> getHeadPose() { return headPose; }
    public Integer getPitch() { return pitch; }
    public Integer getYaw() { return yaw; }
    public Map<String, Object> getMask() { return mask; }
    public Map<String, Object> getMouth() { return mouth; }
    public Map<String, Object> getMouthOpen() { return mouthOpen; }
    public Map<String, Object> getMoustache() { return moustache; }
    public Map<String, Object> getNose() { return nose; }
    public Map<String, Object> getShape() { return shape; }
    public Map<String, Object> getSkin() { return skin; }
    public Integer getSmile() { return smile; }
}
