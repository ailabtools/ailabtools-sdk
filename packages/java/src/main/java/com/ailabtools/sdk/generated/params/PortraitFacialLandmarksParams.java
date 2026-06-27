package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Facial Landmarks API. */
public final class PortraitFacialLandmarksParams implements RequestParams {
    private final FileInput image;
    private final Integer maxFaceNum;
    private final String faceField;

    private PortraitFacialLandmarksParams(Builder builder) {
        this.image = builder.image;
        this.maxFaceNum = builder.maxFaceNum;
        this.faceField = builder.faceField;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Integer getMaxFaceNum() { return maxFaceNum; }
    public String getFaceField() { return faceField; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("max_face_num", maxFaceNum);
        values.put("face_field", faceField);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Integer maxFaceNum;
        private String faceField;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder maxFaceNum(Integer maxFaceNum) {
            this.maxFaceNum = maxFaceNum;
            return this;
        }

        public Builder faceField(String faceField) {
            this.faceField = faceField;
            return this;
        }

        public PortraitFacialLandmarksParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitFacialLandmarksParams(this);
        }
    }
}
