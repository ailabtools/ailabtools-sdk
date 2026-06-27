package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Image Erasure API. */
public final class ImageErasureParams implements RequestParams {
    private final FileInput image;
    private final FileInput userMask;

    private ImageErasureParams(Builder builder) {
        this.image = builder.image;
        this.userMask = builder.userMask;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public FileInput getUserMask() { return userMask; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("user_mask", userMask);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private FileInput userMask;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder userMask(FileInput userMask) {
            this.userMask = userMask;
            return this;
        }

        public ImageErasureParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(userMask, "userMask");
            return new ImageErasureParams(this);
        }
    }
}
