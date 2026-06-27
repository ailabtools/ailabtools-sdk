package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Eyeshadow Try-On API. */
public final class PortraitAIEyeshadowTryOnParams implements RequestParams {
    private final FileInput image;
    private final String eyeshadowStyle;
    private final FileInput imageTemplate;
    private final String aspectRatio;

    private PortraitAIEyeshadowTryOnParams(Builder builder) {
        this.image = builder.image;
        this.eyeshadowStyle = builder.eyeshadowStyle;
        this.imageTemplate = builder.imageTemplate;
        this.aspectRatio = builder.aspectRatio;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getEyeshadowStyle() { return eyeshadowStyle; }
    public FileInput getImageTemplate() { return imageTemplate; }
    public String getAspectRatio() { return aspectRatio; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("eyeshadow_style", eyeshadowStyle);
        values.put("image_template", imageTemplate);
        values.put("aspect_ratio", aspectRatio);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String eyeshadowStyle;
        private FileInput imageTemplate;
        private String aspectRatio;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder eyeshadowStyle(String eyeshadowStyle) {
            this.eyeshadowStyle = eyeshadowStyle;
            return this;
        }

        public Builder imageTemplate(FileInput imageTemplate) {
            this.imageTemplate = imageTemplate;
            return this;
        }

        public Builder aspectRatio(String aspectRatio) {
            this.aspectRatio = aspectRatio;
            return this;
        }

        public PortraitAIEyeshadowTryOnParams build() {
            Objects.requireNonNull(image, "image");
            if (eyeshadowStyle == null && imageTemplate == null) {
                throw new IllegalArgumentException("At least one of eyeshadowStyle, imageTemplate is required");
            }
            return new PortraitAIEyeshadowTryOnParams(this);
        }
    }
}
