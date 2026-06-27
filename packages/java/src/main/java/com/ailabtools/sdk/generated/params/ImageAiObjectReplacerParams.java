package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Object Replacer API. */
public final class ImageAiObjectReplacerParams implements RequestParams {
    private final FileInput image;
    private final FileInput mask;
    private final String customPrompt;
    private final Integer steps;
    private final Double scale;
    private final Integer seed;

    private ImageAiObjectReplacerParams(Builder builder) {
        this.image = builder.image;
        this.mask = builder.mask;
        this.customPrompt = builder.customPrompt;
        this.steps = builder.steps;
        this.scale = builder.scale;
        this.seed = builder.seed;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public FileInput getMask() { return mask; }
    public String getCustomPrompt() { return customPrompt; }
    public Integer getSteps() { return steps; }
    public Double getScale() { return scale; }
    public Integer getSeed() { return seed; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("mask", mask);
        values.put("custom_prompt", customPrompt);
        values.put("steps", steps);
        values.put("scale", scale);
        values.put("seed", seed);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private FileInput mask;
        private String customPrompt;
        private Integer steps;
        private Double scale;
        private Integer seed;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder mask(FileInput mask) {
            this.mask = mask;
            return this;
        }

        public Builder customPrompt(String customPrompt) {
            this.customPrompt = customPrompt;
            return this;
        }

        public Builder steps(Integer steps) {
            this.steps = steps;
            return this;
        }

        public Builder scale(Double scale) {
            this.scale = scale;
            return this;
        }

        public Builder seed(Integer seed) {
            this.seed = seed;
            return this;
        }

        public ImageAiObjectReplacerParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(mask, "mask");
            return new ImageAiObjectReplacerParams(this);
        }
    }
}
