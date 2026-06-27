package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Image Invisible Picture Watermark API. */
public final class ImageInvisibleImageWatermarkParams implements RequestParams {
    private final String functionType;
    private final FileInput originImage;
    private final FileInput logo;
    private final FileInput watermarkImage;
    private final String outputFileType;
    private final Integer qualityFactor;

    private ImageInvisibleImageWatermarkParams(Builder builder) {
        this.functionType = builder.functionType;
        this.originImage = builder.originImage;
        this.logo = builder.logo;
        this.watermarkImage = builder.watermarkImage;
        this.outputFileType = builder.outputFileType;
        this.qualityFactor = builder.qualityFactor;
    }

    public static Builder builder() { return new Builder(); }

    public String getFunctionType() { return functionType; }
    public FileInput getOriginImage() { return originImage; }
    public FileInput getLogo() { return logo; }
    public FileInput getWatermarkImage() { return watermarkImage; }
    public String getOutputFileType() { return outputFileType; }
    public Integer getQualityFactor() { return qualityFactor; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("function_type", functionType);
        values.put("origin_image", originImage);
        values.put("logo", logo);
        values.put("watermark_image", watermarkImage);
        values.put("output_file_type", outputFileType);
        values.put("quality_factor", qualityFactor);
        return values;
    }

    public static final class Builder {
        private String functionType;
        private FileInput originImage;
        private FileInput logo;
        private FileInput watermarkImage;
        private String outputFileType;
        private Integer qualityFactor;

        public Builder functionType(String functionType) {
            this.functionType = functionType;
            return this;
        }

        public Builder originImage(FileInput originImage) {
            this.originImage = originImage;
            return this;
        }

        public Builder logo(FileInput logo) {
            this.logo = logo;
            return this;
        }

        public Builder watermarkImage(FileInput watermarkImage) {
            this.watermarkImage = watermarkImage;
            return this;
        }

        public Builder outputFileType(String outputFileType) {
            this.outputFileType = outputFileType;
            return this;
        }

        public Builder qualityFactor(Integer qualityFactor) {
            this.qualityFactor = qualityFactor;
            return this;
        }

        public ImageInvisibleImageWatermarkParams build() {
            Objects.requireNonNull(functionType, "functionType");
            return new ImageInvisibleImageWatermarkParams(this);
        }
    }
}
