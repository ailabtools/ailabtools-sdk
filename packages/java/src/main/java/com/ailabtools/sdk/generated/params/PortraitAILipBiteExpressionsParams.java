package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Lip Bite Expressions API. */
public final class PortraitAILipBiteExpressionsParams implements RequestParams {
    private final FileInput image;
    private final Integer gridCount;
    private final String aspectRatio;

    private PortraitAILipBiteExpressionsParams(Builder builder) {
        this.image = builder.image;
        this.gridCount = builder.gridCount;
        this.aspectRatio = builder.aspectRatio;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Integer getGridCount() { return gridCount; }
    public String getAspectRatio() { return aspectRatio; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("grid_count", gridCount);
        values.put("aspect_ratio", aspectRatio);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Integer gridCount;
        private String aspectRatio;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder gridCount(Integer gridCount) {
            this.gridCount = gridCount;
            return this;
        }

        public Builder aspectRatio(String aspectRatio) {
            this.aspectRatio = aspectRatio;
            return this;
        }

        public PortraitAILipBiteExpressionsParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitAILipBiteExpressionsParams(this);
        }
    }
}
