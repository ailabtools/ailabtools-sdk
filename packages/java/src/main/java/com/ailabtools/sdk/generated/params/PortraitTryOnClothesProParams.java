package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Try on Clothes Pro API. */
public final class PortraitTryOnClothesProParams implements RequestParams {
    private final String taskType;
    private final FileInput personImage;
    private final FileInput topGarment;
    private final FileInput bottomGarment;
    private final Integer resolution;
    private final Boolean restoreFace;

    private PortraitTryOnClothesProParams(Builder builder) {
        this.taskType = builder.taskType;
        this.personImage = builder.personImage;
        this.topGarment = builder.topGarment;
        this.bottomGarment = builder.bottomGarment;
        this.resolution = builder.resolution;
        this.restoreFace = builder.restoreFace;
    }

    public static Builder builder() { return new Builder(); }

    public String getTaskType() { return taskType; }
    public FileInput getPersonImage() { return personImage; }
    public FileInput getTopGarment() { return topGarment; }
    public FileInput getBottomGarment() { return bottomGarment; }
    public Integer getResolution() { return resolution; }
    public Boolean getRestoreFace() { return restoreFace; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("task_type", taskType);
        values.put("person_image", personImage);
        values.put("top_garment", topGarment);
        values.put("bottom_garment", bottomGarment);
        values.put("resolution", resolution);
        values.put("restore_face", restoreFace);
        return values;
    }

    public static final class Builder {
        private String taskType;
        private FileInput personImage;
        private FileInput topGarment;
        private FileInput bottomGarment;
        private Integer resolution;
        private Boolean restoreFace;

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

        public Builder bottomGarment(FileInput bottomGarment) {
            this.bottomGarment = bottomGarment;
            return this;
        }

        public Builder resolution(Integer resolution) {
            this.resolution = resolution;
            return this;
        }

        public Builder restoreFace(Boolean restoreFace) {
            this.restoreFace = restoreFace;
            return this;
        }

        public PortraitTryOnClothesProParams build() {
            Objects.requireNonNull(taskType, "taskType");
            Objects.requireNonNull(personImage, "personImage");
            Objects.requireNonNull(topGarment, "topGarment");
            return new PortraitTryOnClothesProParams(this);
        }
    }
}
