package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Age &amp; Gender Swap API. */
public final class PortraitFaceAttributeEditingParams implements RequestParams {
    private final FileInput image;
    private final String actionType;
    private final String qualityControl;
    private final String faceLocation;

    private PortraitFaceAttributeEditingParams(Builder builder) {
        this.image = builder.image;
        this.actionType = builder.actionType;
        this.qualityControl = builder.qualityControl;
        this.faceLocation = builder.faceLocation;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getActionType() { return actionType; }
    public String getQualityControl() { return qualityControl; }
    public String getFaceLocation() { return faceLocation; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("action_type", actionType);
        values.put("quality_control", qualityControl);
        values.put("face_location", faceLocation);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String actionType;
        private String qualityControl;
        private String faceLocation;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder actionType(String actionType) {
            this.actionType = actionType;
            return this;
        }

        public Builder qualityControl(String qualityControl) {
            this.qualityControl = qualityControl;
            return this;
        }

        public Builder faceLocation(String faceLocation) {
            this.faceLocation = faceLocation;
            return this;
        }

        public PortraitFaceAttributeEditingParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(actionType, "actionType");
            return new PortraitFaceAttributeEditingParams(this);
        }
    }
}
