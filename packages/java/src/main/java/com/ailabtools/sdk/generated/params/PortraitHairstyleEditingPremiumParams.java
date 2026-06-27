package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Hairstyle Changer Premium API. */
public final class PortraitHairstyleEditingPremiumParams implements RequestParams {
    private final FileInput image;
    private final FileInput imageTemplate;
    private final String hairStyle;
    private final String color;

    private PortraitHairstyleEditingPremiumParams(Builder builder) {
        this.image = builder.image;
        this.imageTemplate = builder.imageTemplate;
        this.hairStyle = builder.hairStyle;
        this.color = builder.color;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public FileInput getImageTemplate() { return imageTemplate; }
    public String getHairStyle() { return hairStyle; }
    public String getColor() { return color; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("image_template", imageTemplate);
        values.put("hair_style", hairStyle);
        values.put("color", color);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private FileInput imageTemplate;
        private String hairStyle;
        private String color;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder imageTemplate(FileInput imageTemplate) {
            this.imageTemplate = imageTemplate;
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

        public PortraitHairstyleEditingPremiumParams build() {
            Objects.requireNonNull(image, "image");
            if (hairStyle == null && imageTemplate == null) {
                throw new IllegalArgumentException("At least one of hairStyle, imageTemplate is required");
            }
            return new PortraitHairstyleEditingPremiumParams(this);
        }
    }
}
