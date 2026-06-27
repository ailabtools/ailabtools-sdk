package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Skin Analyze Advanced API. */
public final class PortraitSkinAnalysisAdvancedParams implements RequestParams {
    private final FileInput image;
    private final Integer faceQualityControl;
    private final Integer returnRectConfidence;
    private final String returnMaps;

    private PortraitSkinAnalysisAdvancedParams(Builder builder) {
        this.image = builder.image;
        this.faceQualityControl = builder.faceQualityControl;
        this.returnRectConfidence = builder.returnRectConfidence;
        this.returnMaps = builder.returnMaps;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Integer getFaceQualityControl() { return faceQualityControl; }
    public Integer getReturnRectConfidence() { return returnRectConfidence; }
    public String getReturnMaps() { return returnMaps; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("face_quality_control", faceQualityControl);
        values.put("return_rect_confidence", returnRectConfidence);
        values.put("return_maps", returnMaps);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Integer faceQualityControl;
        private Integer returnRectConfidence;
        private String returnMaps;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder faceQualityControl(Integer faceQualityControl) {
            this.faceQualityControl = faceQualityControl;
            return this;
        }

        public Builder returnRectConfidence(Integer returnRectConfidence) {
            this.returnRectConfidence = returnRectConfidence;
            return this;
        }

        public Builder returnMaps(String returnMaps) {
            this.returnMaps = returnMaps;
            return this;
        }

        public PortraitSkinAnalysisAdvancedParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitSkinAnalysisAdvancedParams(this);
        }
    }
}
