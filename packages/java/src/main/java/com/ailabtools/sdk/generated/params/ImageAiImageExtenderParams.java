package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Image Extender API. */
public final class ImageAiImageExtenderParams implements RequestParams {
    private final String customPrompt;
    private final Integer steps;
    private final Double strength;
    private final Double scale;
    private final Integer seed;
    private final Integer maxHeight;
    private final Integer maxWidth;
    private final FileInput image;
    private final Double top;
    private final Double bottom;
    private final Double left;
    private final Double right;
    private final FileInput mask;

    private ImageAiImageExtenderParams(Builder builder) {
        this.customPrompt = builder.customPrompt;
        this.steps = builder.steps;
        this.strength = builder.strength;
        this.scale = builder.scale;
        this.seed = builder.seed;
        this.maxHeight = builder.maxHeight;
        this.maxWidth = builder.maxWidth;
        this.image = builder.image;
        this.top = builder.top;
        this.bottom = builder.bottom;
        this.left = builder.left;
        this.right = builder.right;
        this.mask = builder.mask;
    }

    public static Builder builder() { return new Builder(); }

    public String getCustomPrompt() { return customPrompt; }
    public Integer getSteps() { return steps; }
    public Double getStrength() { return strength; }
    public Double getScale() { return scale; }
    public Integer getSeed() { return seed; }
    public Integer getMaxHeight() { return maxHeight; }
    public Integer getMaxWidth() { return maxWidth; }
    public FileInput getImage() { return image; }
    public Double getTop() { return top; }
    public Double getBottom() { return bottom; }
    public Double getLeft() { return left; }
    public Double getRight() { return right; }
    public FileInput getMask() { return mask; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("custom_prompt", customPrompt);
        values.put("steps", steps);
        values.put("strength", strength);
        values.put("scale", scale);
        values.put("seed", seed);
        values.put("max_height", maxHeight);
        values.put("max_width", maxWidth);
        values.put("image", image);
        values.put("top", top);
        values.put("bottom", bottom);
        values.put("left", left);
        values.put("right", right);
        values.put("mask", mask);
        return values;
    }

    public static final class Builder {
        private String customPrompt;
        private Integer steps;
        private Double strength;
        private Double scale;
        private Integer seed;
        private Integer maxHeight;
        private Integer maxWidth;
        private FileInput image;
        private Double top;
        private Double bottom;
        private Double left;
        private Double right;
        private FileInput mask;

        public Builder customPrompt(String customPrompt) {
            this.customPrompt = customPrompt;
            return this;
        }

        public Builder steps(Integer steps) {
            this.steps = steps;
            return this;
        }

        public Builder strength(Double strength) {
            this.strength = strength;
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

        public Builder maxHeight(Integer maxHeight) {
            this.maxHeight = maxHeight;
            return this;
        }

        public Builder maxWidth(Integer maxWidth) {
            this.maxWidth = maxWidth;
            return this;
        }

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder top(Double top) {
            this.top = top;
            return this;
        }

        public Builder bottom(Double bottom) {
            this.bottom = bottom;
            return this;
        }

        public Builder left(Double left) {
            this.left = left;
            return this;
        }

        public Builder right(Double right) {
            this.right = right;
            return this;
        }

        public Builder mask(FileInput mask) {
            this.mask = mask;
            return this;
        }

        public ImageAiImageExtenderParams build() {
            Objects.requireNonNull(image, "image");
            return new ImageAiImageExtenderParams(this);
        }
    }
}
