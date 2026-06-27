package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Face Rating API. */
public final class PortraitAIFaceRatingParams implements RequestParams {
    private final FileInput image;
    private final String aspectRatio;

    private PortraitAIFaceRatingParams(Builder builder) {
        this.image = builder.image;
        this.aspectRatio = builder.aspectRatio;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getAspectRatio() { return aspectRatio; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("aspect_ratio", aspectRatio);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String aspectRatio;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder aspectRatio(String aspectRatio) {
            this.aspectRatio = aspectRatio;
            return this;
        }

        public PortraitAIFaceRatingParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitAIFaceRatingParams(this);
        }
    }
}
