package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Intelligent Composition API. */
public final class ImageIntelligentCompositionParams implements RequestParams {
    private final FileInput image;
    private final Integer numBoxes;

    private ImageIntelligentCompositionParams(Builder builder) {
        this.image = builder.image;
        this.numBoxes = builder.numBoxes;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Integer getNumBoxes() { return numBoxes; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("num_boxes", numBoxes);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Integer numBoxes;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder numBoxes(Integer numBoxes) {
            this.numBoxes = numBoxes;
            return this;
        }

        public ImageIntelligentCompositionParams build() {
            Objects.requireNonNull(image, "image");
            return new ImageIntelligentCompositionParams(this);
        }
    }
}
