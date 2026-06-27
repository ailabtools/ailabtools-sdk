package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Face Slimming API. */
public final class PortraitIntelligentFaceSlimmingParams implements RequestParams {
    private final FileInput image;
    private final Double slimDegree;

    private PortraitIntelligentFaceSlimmingParams(Builder builder) {
        this.image = builder.image;
        this.slimDegree = builder.slimDegree;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Double getSlimDegree() { return slimDegree; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("slim_degree", slimDegree);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Double slimDegree;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder slimDegree(Double slimDegree) {
            this.slimDegree = slimDegree;
            return this;
        }

        public PortraitIntelligentFaceSlimmingParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitIntelligentFaceSlimmingParams(this);
        }
    }
}
