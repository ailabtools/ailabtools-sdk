package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Remove Objects API. */
public final class ImageRemoveObjectsParams implements RequestParams {
    private final FileInput image;
    private final FileInput mask;

    private ImageRemoveObjectsParams(Builder builder) {
        this.image = builder.image;
        this.mask = builder.mask;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public FileInput getMask() { return mask; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("mask", mask);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private FileInput mask;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder mask(FileInput mask) {
            this.mask = mask;
            return this;
        }

        public ImageRemoveObjectsParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(mask, "mask");
            return new ImageRemoveObjectsParams(this);
        }
    }
}
