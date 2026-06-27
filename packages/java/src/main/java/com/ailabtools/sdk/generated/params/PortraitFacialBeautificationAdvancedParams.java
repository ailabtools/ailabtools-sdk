package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Face Beauty Advanced API. */
public final class PortraitFacialBeautificationAdvancedParams implements RequestParams {
    private final FileInput image;
    private final Integer whitening;
    private final Integer smoothing;
    private final Integer faceLifting;
    private final Integer eyeEnlarging;

    private PortraitFacialBeautificationAdvancedParams(Builder builder) {
        this.image = builder.image;
        this.whitening = builder.whitening;
        this.smoothing = builder.smoothing;
        this.faceLifting = builder.faceLifting;
        this.eyeEnlarging = builder.eyeEnlarging;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Integer getWhitening() { return whitening; }
    public Integer getSmoothing() { return smoothing; }
    public Integer getFaceLifting() { return faceLifting; }
    public Integer getEyeEnlarging() { return eyeEnlarging; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("whitening", whitening);
        values.put("smoothing", smoothing);
        values.put("face_lifting", faceLifting);
        values.put("eye_enlarging", eyeEnlarging);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Integer whitening;
        private Integer smoothing;
        private Integer faceLifting;
        private Integer eyeEnlarging;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder whitening(Integer whitening) {
            this.whitening = whitening;
            return this;
        }

        public Builder smoothing(Integer smoothing) {
            this.smoothing = smoothing;
            return this;
        }

        public Builder faceLifting(Integer faceLifting) {
            this.faceLifting = faceLifting;
            return this;
        }

        public Builder eyeEnlarging(Integer eyeEnlarging) {
            this.eyeEnlarging = eyeEnlarging;
            return this;
        }

        public PortraitFacialBeautificationAdvancedParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitFacialBeautificationAdvancedParams(this);
        }
    }
}
