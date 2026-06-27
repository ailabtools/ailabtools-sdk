package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Remove Objects Advanced API. */
public final class ImageRemoveObjectsAdvancedParams implements RequestParams {
    private final FileInput image;
    private final FileInput mask;
    private final Integer steps;
    private final Double strength;
    private final Double scale;
    private final Integer seed;
    private final Integer dilateSize;
    private final String quality;

    private ImageRemoveObjectsAdvancedParams(Builder builder) {
        this.image = builder.image;
        this.mask = builder.mask;
        this.steps = builder.steps;
        this.strength = builder.strength;
        this.scale = builder.scale;
        this.seed = builder.seed;
        this.dilateSize = builder.dilateSize;
        this.quality = builder.quality;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public FileInput getMask() { return mask; }
    public Integer getSteps() { return steps; }
    public Double getStrength() { return strength; }
    public Double getScale() { return scale; }
    public Integer getSeed() { return seed; }
    public Integer getDilateSize() { return dilateSize; }
    public String getQuality() { return quality; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("mask", mask);
        values.put("steps", steps);
        values.put("strength", strength);
        values.put("scale", scale);
        values.put("seed", seed);
        values.put("dilate_size", dilateSize);
        values.put("quality", quality);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private FileInput mask;
        private Integer steps;
        private Double strength;
        private Double scale;
        private Integer seed;
        private Integer dilateSize;
        private String quality;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder mask(FileInput mask) {
            this.mask = mask;
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

        public Builder dilateSize(Integer dilateSize) {
            this.dilateSize = dilateSize;
            return this;
        }

        public Builder quality(String quality) {
            this.quality = quality;
            return this;
        }

        public ImageRemoveObjectsAdvancedParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(mask, "mask");
            return new ImageRemoveObjectsAdvancedParams(this);
        }
    }
}
