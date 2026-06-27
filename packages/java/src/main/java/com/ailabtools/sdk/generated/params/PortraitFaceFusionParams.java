package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Merge Portraits API. */
public final class PortraitFaceFusionParams implements RequestParams {
    private final FileInput imageTarget;
    private final FileInput imageTemplate;
    private final Double sourceSimilarity;

    private PortraitFaceFusionParams(Builder builder) {
        this.imageTarget = builder.imageTarget;
        this.imageTemplate = builder.imageTemplate;
        this.sourceSimilarity = builder.sourceSimilarity;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImageTarget() { return imageTarget; }
    public FileInput getImageTemplate() { return imageTemplate; }
    public Double getSourceSimilarity() { return sourceSimilarity; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image_target", imageTarget);
        values.put("image_template", imageTemplate);
        values.put("source_similarity", sourceSimilarity);
        return values;
    }

    public static final class Builder {
        private FileInput imageTarget;
        private FileInput imageTemplate;
        private Double sourceSimilarity;

        public Builder imageTarget(FileInput imageTarget) {
            this.imageTarget = imageTarget;
            return this;
        }

        public Builder imageTemplate(FileInput imageTemplate) {
            this.imageTemplate = imageTemplate;
            return this;
        }

        public Builder sourceSimilarity(Double sourceSimilarity) {
            this.sourceSimilarity = sourceSimilarity;
            return this;
        }

        public PortraitFaceFusionParams build() {
            Objects.requireNonNull(imageTarget, "imageTarget");
            Objects.requireNonNull(imageTemplate, "imageTemplate");
            return new PortraitFaceFusionParams(this);
        }
    }
}
