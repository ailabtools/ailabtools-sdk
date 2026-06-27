package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Image Upscaler API. */
public final class ImageLosslessEnlargementParams implements RequestParams {
    private final FileInput image;
    private final Integer upscaleFactor;
    private final String mode;
    private final String outputFormat;
    private final Integer outputQuality;

    private ImageLosslessEnlargementParams(Builder builder) {
        this.image = builder.image;
        this.upscaleFactor = builder.upscaleFactor;
        this.mode = builder.mode;
        this.outputFormat = builder.outputFormat;
        this.outputQuality = builder.outputQuality;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Integer getUpscaleFactor() { return upscaleFactor; }
    public String getMode() { return mode; }
    public String getOutputFormat() { return outputFormat; }
    public Integer getOutputQuality() { return outputQuality; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("upscale_factor", upscaleFactor);
        values.put("mode", mode);
        values.put("output_format", outputFormat);
        values.put("output_quality", outputQuality);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Integer upscaleFactor;
        private String mode;
        private String outputFormat;
        private Integer outputQuality;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder upscaleFactor(Integer upscaleFactor) {
            this.upscaleFactor = upscaleFactor;
            return this;
        }

        public Builder mode(String mode) {
            this.mode = mode;
            return this;
        }

        public Builder outputFormat(String outputFormat) {
            this.outputFormat = outputFormat;
            return this;
        }

        public Builder outputQuality(Integer outputQuality) {
            this.outputQuality = outputQuality;
            return this;
        }

        public ImageLosslessEnlargementParams build() {
            Objects.requireNonNull(image, "image");
            return new ImageLosslessEnlargementParams(this);
        }
    }
}
