package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Try on Clothes Premium API. */
public final class PortraitTryOnClothesPremiumParams implements RequestParams {
    private final String taskType;
    private final FileInput personImage;
    private final FileInput topGarment;
    private final Double resolution;
    private final Boolean restoreFace;
    private final FileInput bottomGarment;

    private PortraitTryOnClothesPremiumParams(Builder builder) {
        this.taskType = builder.taskType;
        this.personImage = builder.personImage;
        this.topGarment = builder.topGarment;
        this.resolution = builder.resolution;
        this.restoreFace = builder.restoreFace;
        this.bottomGarment = builder.bottomGarment;
    }

    public static Builder builder() { return new Builder(); }

    public String getTaskType() { return taskType; }
    public FileInput getPersonImage() { return personImage; }
    public FileInput getTopGarment() { return topGarment; }
    public Double getResolution() { return resolution; }
    public Boolean getRestoreFace() { return restoreFace; }
    public FileInput getBottomGarment() { return bottomGarment; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("task_type", taskType);
        values.put("person_image", personImage);
        values.put("top_garment", topGarment);
        values.put("resolution", resolution);
        values.put("restore_face", restoreFace);
        values.put("bottom_garment", bottomGarment);
        return values;
    }

    public static final class Builder {
        private String taskType;
        private FileInput personImage;
        private FileInput topGarment;
        private Double resolution;
        private Boolean restoreFace;
        private FileInput bottomGarment;

        public Builder taskType(String taskType) {
            this.taskType = taskType;
            return this;
        }

        public Builder personImage(FileInput personImage) {
            this.personImage = personImage;
            return this;
        }

        public Builder topGarment(FileInput topGarment) {
            this.topGarment = topGarment;
            return this;
        }

        public Builder resolution(Double resolution) {
            this.resolution = resolution;
            return this;
        }

        public Builder restoreFace(Boolean restoreFace) {
            this.restoreFace = restoreFace;
            return this;
        }

        public Builder bottomGarment(FileInput bottomGarment) {
            this.bottomGarment = bottomGarment;
            return this;
        }

        public PortraitTryOnClothesPremiumParams build() {
            Objects.requireNonNull(taskType, "taskType");
            Objects.requireNonNull(personImage, "personImage");
            Objects.requireNonNull(topGarment, "topGarment");
            return new PortraitTryOnClothesPremiumParams(this);
        }
    }
}
