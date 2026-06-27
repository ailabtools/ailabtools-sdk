package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Image Color Enhancement API. */
public final class ImageColorEnhancementParams implements RequestParams {
    private final FileInput image;
    private final String outputFormat;
    private final String mode;

    private ImageColorEnhancementParams(Builder builder) {
        this.image = builder.image;
        this.outputFormat = builder.outputFormat;
        this.mode = builder.mode;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getOutputFormat() { return outputFormat; }
    public String getMode() { return mode; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("output_format", outputFormat);
        values.put("mode", mode);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String outputFormat;
        private String mode;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder outputFormat(String outputFormat) {
            this.outputFormat = outputFormat;
            return this;
        }

        public Builder mode(String mode) {
            this.mode = mode;
            return this;
        }

        public ImageColorEnhancementParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(outputFormat, "outputFormat");
            Objects.requireNonNull(mode, "mode");
            return new ImageColorEnhancementParams(this);
        }
    }
}
