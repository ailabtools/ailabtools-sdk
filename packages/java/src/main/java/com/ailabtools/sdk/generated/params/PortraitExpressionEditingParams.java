package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Change Facial Expressions API. */
public final class PortraitExpressionEditingParams implements RequestParams {
    private final FileInput imageTarget;
    private final Integer serviceChoice;

    private PortraitExpressionEditingParams(Builder builder) {
        this.imageTarget = builder.imageTarget;
        this.serviceChoice = builder.serviceChoice;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImageTarget() { return imageTarget; }
    public Integer getServiceChoice() { return serviceChoice; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image_target", imageTarget);
        values.put("service_choice", serviceChoice);
        return values;
    }

    public static final class Builder {
        private FileInput imageTarget;
        private Integer serviceChoice;

        public Builder imageTarget(FileInput imageTarget) {
            this.imageTarget = imageTarget;
            return this;
        }

        public Builder serviceChoice(Integer serviceChoice) {
            this.serviceChoice = serviceChoice;
            return this;
        }

        public PortraitExpressionEditingParams build() {
            Objects.requireNonNull(imageTarget, "imageTarget");
            Objects.requireNonNull(serviceChoice, "serviceChoice");
            return new PortraitExpressionEditingParams(this);
        }
    }
}
