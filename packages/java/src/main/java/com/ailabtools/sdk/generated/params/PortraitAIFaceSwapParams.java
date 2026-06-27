package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Face Swap API. */
public final class PortraitAIFaceSwapParams implements RequestParams {
    private final FileInput imageTarget;
    private final FileInput imageTemplate;

    private PortraitAIFaceSwapParams(Builder builder) {
        this.imageTarget = builder.imageTarget;
        this.imageTemplate = builder.imageTemplate;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImageTarget() { return imageTarget; }
    public FileInput getImageTemplate() { return imageTemplate; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image_target", imageTarget);
        values.put("image_template", imageTemplate);
        return values;
    }

    public static final class Builder {
        private FileInput imageTarget;
        private FileInput imageTemplate;

        public Builder imageTarget(FileInput imageTarget) {
            this.imageTarget = imageTarget;
            return this;
        }

        public Builder imageTemplate(FileInput imageTemplate) {
            this.imageTemplate = imageTemplate;
            return this;
        }

        public PortraitAIFaceSwapParams build() {
            Objects.requireNonNull(imageTarget, "imageTarget");
            Objects.requireNonNull(imageTemplate, "imageTemplate");
            return new PortraitAIFaceSwapParams(this);
        }
    }
}
