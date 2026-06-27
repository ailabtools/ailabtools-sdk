package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Halloween Mask API. */
public final class PortraitAIHalloweenMaskParams implements RequestParams {
    private final FileInput image;
    private final String maskStyle;
    private final FileInput imageTemplate;
    private final String aspectRatio;

    private PortraitAIHalloweenMaskParams(Builder builder) {
        this.image = builder.image;
        this.maskStyle = builder.maskStyle;
        this.imageTemplate = builder.imageTemplate;
        this.aspectRatio = builder.aspectRatio;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getMaskStyle() { return maskStyle; }
    public FileInput getImageTemplate() { return imageTemplate; }
    public String getAspectRatio() { return aspectRatio; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("mask_style", maskStyle);
        values.put("image_template", imageTemplate);
        values.put("aspect_ratio", aspectRatio);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String maskStyle;
        private FileInput imageTemplate;
        private String aspectRatio;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder maskStyle(String maskStyle) {
            this.maskStyle = maskStyle;
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

        public PortraitAIHalloweenMaskParams build() {
            Objects.requireNonNull(image, "image");
            if (maskStyle == null && imageTemplate == null) {
                throw new IllegalArgumentException("At least one of maskStyle, imageTemplate is required");
            }
            return new PortraitAIHalloweenMaskParams(this);
        }
    }
}
