package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Photo Retouch API. */
public final class ImagePhotoEditingParams implements RequestParams {
    private final FileInput image;
    private final FileInput style;

    private ImagePhotoEditingParams(Builder builder) {
        this.image = builder.image;
        this.style = builder.style;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public FileInput getStyle() { return style; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("style", style);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private FileInput style;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder style(FileInput style) {
            this.style = style;
            return this;
        }

        public ImagePhotoEditingParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(style, "style");
            return new ImagePhotoEditingParams(this);
        }
    }
}
