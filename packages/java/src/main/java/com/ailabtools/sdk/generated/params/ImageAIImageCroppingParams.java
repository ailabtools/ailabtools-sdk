package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Image Cropping API. */
public final class ImageAIImageCroppingParams implements RequestParams {
    private final FileInput image;
    private final Integer width;
    private final Integer height;

    private ImageAIImageCroppingParams(Builder builder) {
        this.image = builder.image;
        this.width = builder.width;
        this.height = builder.height;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Integer getWidth() { return width; }
    public Integer getHeight() { return height; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("width", width);
        values.put("height", height);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Integer width;
        private Integer height;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder width(Integer width) {
            this.width = width;
            return this;
        }

        public Builder height(Integer height) {
            this.height = height;
            return this;
        }

        public ImageAIImageCroppingParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(width, "width");
            Objects.requireNonNull(height, "height");
            return new ImageAIImageCroppingParams(this);
        }
    }
}
