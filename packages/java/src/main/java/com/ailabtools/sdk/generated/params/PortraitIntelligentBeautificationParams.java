package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Smart Beauty API. */
public final class PortraitIntelligentBeautificationParams implements RequestParams {
    private final FileInput imageTarget;
    private final String multiFace;
    private final Double beautyLevel;
    private final String taskType;

    private PortraitIntelligentBeautificationParams(Builder builder) {
        this.imageTarget = builder.imageTarget;
        this.multiFace = builder.multiFace;
        this.beautyLevel = builder.beautyLevel;
        this.taskType = builder.taskType;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImageTarget() { return imageTarget; }
    public String getMultiFace() { return multiFace; }
    public Double getBeautyLevel() { return beautyLevel; }
    public String getTaskType() { return taskType; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image_target", imageTarget);
        values.put("multi_face", multiFace);
        values.put("beauty_level", beautyLevel);
        values.put("task_type", taskType);
        return values;
    }

    public static final class Builder {
        private FileInput imageTarget;
        private String multiFace;
        private Double beautyLevel;
        private String taskType;

        public Builder imageTarget(FileInput imageTarget) {
            this.imageTarget = imageTarget;
            return this;
        }

        public Builder multiFace(String multiFace) {
            this.multiFace = multiFace;
            return this;
        }

        public Builder beautyLevel(Double beautyLevel) {
            this.beautyLevel = beautyLevel;
            return this;
        }

        public Builder taskType(String taskType) {
            this.taskType = taskType;
            return this;
        }

        public PortraitIntelligentBeautificationParams build() {
            Objects.requireNonNull(imageTarget, "imageTarget");
            return new PortraitIntelligentBeautificationParams(this);
        }
    }
}
