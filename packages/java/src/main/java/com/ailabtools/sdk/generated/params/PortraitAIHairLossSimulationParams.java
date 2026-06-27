package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Hair Loss Simulation API. */
public final class PortraitAIHairLossSimulationParams implements RequestParams {
    private final FileInput image;
    private final String level;

    private PortraitAIHairLossSimulationParams(Builder builder) {
        this.image = builder.image;
        this.level = builder.level;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getLevel() { return level; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("level", level);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String level;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder level(String level) {
            this.level = level;
            return this;
        }

        public PortraitAIHairLossSimulationParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(level, "level");
            return new PortraitAIHairLossSimulationParams(this);
        }
    }
}
