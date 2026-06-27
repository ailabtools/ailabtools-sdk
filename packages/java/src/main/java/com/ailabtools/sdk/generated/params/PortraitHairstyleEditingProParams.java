package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Hairstyle Changer Pro API. */
public final class PortraitHairstyleEditingProParams implements RequestParams {
    private final String taskType;
    private final FileInput image;
    private final String hairStyle;
    private final String color;
    private final Integer imageSize;
    private final FileInput mask;
    private final Integer bangs;
    private final Integer mode;
    private final Integer reference;

    private PortraitHairstyleEditingProParams(Builder builder) {
        this.taskType = builder.taskType;
        this.image = builder.image;
        this.hairStyle = builder.hairStyle;
        this.color = builder.color;
        this.imageSize = builder.imageSize;
        this.mask = builder.mask;
        this.bangs = builder.bangs;
        this.mode = builder.mode;
        this.reference = builder.reference;
    }

    public static Builder builder() { return new Builder(); }

    public String getTaskType() { return taskType; }
    public FileInput getImage() { return image; }
    public String getHairStyle() { return hairStyle; }
    public String getColor() { return color; }
    public Integer getImageSize() { return imageSize; }
    public FileInput getMask() { return mask; }
    public Integer getBangs() { return bangs; }
    public Integer getMode() { return mode; }
    public Integer getReference() { return reference; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("task_type", taskType);
        values.put("image", image);
        values.put("hair_style", hairStyle);
        values.put("color", color);
        values.put("image_size", imageSize);
        values.put("mask", mask);
        values.put("bangs", bangs);
        values.put("mode", mode);
        values.put("reference", reference);
        return values;
    }

    public static final class Builder {
        private String taskType;
        private FileInput image;
        private String hairStyle;
        private String color;
        private Integer imageSize;
        private FileInput mask;
        private Integer bangs;
        private Integer mode;
        private Integer reference;

        public Builder taskType(String taskType) {
            this.taskType = taskType;
            return this;
        }

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder hairStyle(String hairStyle) {
            this.hairStyle = hairStyle;
            return this;
        }

        public Builder color(String color) {
            this.color = color;
            return this;
        }

        public Builder imageSize(Integer imageSize) {
            this.imageSize = imageSize;
            return this;
        }

        public Builder mask(FileInput mask) {
            this.mask = mask;
            return this;
        }

        public Builder bangs(Integer bangs) {
            this.bangs = bangs;
            return this;
        }

        public Builder mode(Integer mode) {
            this.mode = mode;
            return this;
        }

        public Builder reference(Integer reference) {
            this.reference = reference;
            return this;
        }

        public PortraitHairstyleEditingProParams build() {
            Objects.requireNonNull(taskType, "taskType");
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(hairStyle, "hairStyle");
            return new PortraitHairstyleEditingProParams(this);
        }
    }
}
