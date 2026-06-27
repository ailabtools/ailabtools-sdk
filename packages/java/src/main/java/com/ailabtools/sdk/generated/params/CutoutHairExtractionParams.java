package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Hairstyle Extraction API. */
public final class CutoutHairExtractionParams implements RequestParams {
    private final FileInput image;

    private CutoutHairExtractionParams(Builder builder) {
        this.image = builder.image;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        return values;
    }

    public static final class Builder {
        private FileInput image;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public CutoutHairExtractionParams build() {
            Objects.requireNonNull(image, "image");
            return new CutoutHairExtractionParams(this);
        }
    }
}
