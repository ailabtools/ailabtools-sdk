package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Face Analyzer API. */
public final class PortraitFaceAnalyzerParams implements RequestParams {
    private final FileInput image;
    private final Integer maxFaceNum;
    private final String faceAttributesType;
    private final Integer needRotateDetection;

    private PortraitFaceAnalyzerParams(Builder builder) {
        this.image = builder.image;
        this.maxFaceNum = builder.maxFaceNum;
        this.faceAttributesType = builder.faceAttributesType;
        this.needRotateDetection = builder.needRotateDetection;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Integer getMaxFaceNum() { return maxFaceNum; }
    public String getFaceAttributesType() { return faceAttributesType; }
    public Integer getNeedRotateDetection() { return needRotateDetection; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("max_face_num", maxFaceNum);
        values.put("face_attributes_type", faceAttributesType);
        values.put("need_rotate_detection", needRotateDetection);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Integer maxFaceNum;
        private String faceAttributesType;
        private Integer needRotateDetection;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder maxFaceNum(Integer maxFaceNum) {
            this.maxFaceNum = maxFaceNum;
            return this;
        }

        public Builder faceAttributesType(String faceAttributesType) {
            this.faceAttributesType = faceAttributesType;
            return this;
        }

        public Builder needRotateDetection(Integer needRotateDetection) {
            this.needRotateDetection = needRotateDetection;
            return this;
        }

        public PortraitFaceAnalyzerParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitFaceAnalyzerParams(this);
        }
    }
}
