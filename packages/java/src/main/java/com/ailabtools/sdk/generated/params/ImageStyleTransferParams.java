package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Photo to Painting API. */
public final class ImageStyleTransferParams implements RequestParams {
    private final FileInput image;
    private final String option;

    private ImageStyleTransferParams(Builder builder) {
        this.image = builder.image;
        this.option = builder.option;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getOption() { return option; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("option", option);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String option;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder option(String option) {
            this.option = option;
            return this;
        }

        public ImageStyleTransferParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(option, "option");
            return new ImageStyleTransferParams(this);
        }
    }
}
