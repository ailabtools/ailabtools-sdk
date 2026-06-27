package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Skin Beauty API. */
public final class PortraitIntelligentSkinRetouchingParams implements RequestParams {
    private final FileInput image;
    private final Double retouchDegree;
    private final Double whiteningDegree;

    private PortraitIntelligentSkinRetouchingParams(Builder builder) {
        this.image = builder.image;
        this.retouchDegree = builder.retouchDegree;
        this.whiteningDegree = builder.whiteningDegree;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Double getRetouchDegree() { return retouchDegree; }
    public Double getWhiteningDegree() { return whiteningDegree; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("retouch_degree", retouchDegree);
        values.put("whitening_degree", whiteningDegree);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Double retouchDegree;
        private Double whiteningDegree;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder retouchDegree(Double retouchDegree) {
            this.retouchDegree = retouchDegree;
            return this;
        }

        public Builder whiteningDegree(Double whiteningDegree) {
            this.whiteningDegree = whiteningDegree;
            return this;
        }

        public PortraitIntelligentSkinRetouchingParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitIntelligentSkinRetouchingParams(this);
        }
    }
}
