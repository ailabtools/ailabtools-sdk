package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Nail Art Pro API. */
public final class ImageAINailArtProParams implements RequestParams {
    private final FileInput image;
    private final FileInput referenceImage;
    private final String resolution;

    private ImageAINailArtProParams(Builder builder) {
        this.image = builder.image;
        this.referenceImage = builder.referenceImage;
        this.resolution = builder.resolution;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public FileInput getReferenceImage() { return referenceImage; }
    public String getResolution() { return resolution; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("reference_image", referenceImage);
        values.put("resolution", resolution);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private FileInput referenceImage;
        private String resolution;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder referenceImage(FileInput referenceImage) {
            this.referenceImage = referenceImage;
            return this;
        }

        public Builder resolution(String resolution) {
            this.resolution = resolution;
            return this;
        }

        public ImageAINailArtProParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(referenceImage, "referenceImage");
            return new ImageAINailArtProParams(this);
        }
    }
}
