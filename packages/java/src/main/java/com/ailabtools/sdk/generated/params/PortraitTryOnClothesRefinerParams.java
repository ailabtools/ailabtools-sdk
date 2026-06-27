package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Try on Clothes Refiner API. */
public final class PortraitTryOnClothesRefinerParams implements RequestParams {
    private final String taskType;
    private final FileInput personImage;
    private final FileInput topGarment;
    private final FileInput coarseImage;
    private final String gender;
    private final FileInput bottomGarment;

    private PortraitTryOnClothesRefinerParams(Builder builder) {
        this.taskType = builder.taskType;
        this.personImage = builder.personImage;
        this.topGarment = builder.topGarment;
        this.coarseImage = builder.coarseImage;
        this.gender = builder.gender;
        this.bottomGarment = builder.bottomGarment;
    }

    public static Builder builder() { return new Builder(); }

    public String getTaskType() { return taskType; }
    public FileInput getPersonImage() { return personImage; }
    public FileInput getTopGarment() { return topGarment; }
    public FileInput getCoarseImage() { return coarseImage; }
    public String getGender() { return gender; }
    public FileInput getBottomGarment() { return bottomGarment; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("task_type", taskType);
        values.put("person_image", personImage);
        values.put("top_garment", topGarment);
        values.put("coarse_image", coarseImage);
        values.put("gender", gender);
        values.put("bottom_garment", bottomGarment);
        return values;
    }

    public static final class Builder {
        private String taskType;
        private FileInput personImage;
        private FileInput topGarment;
        private FileInput coarseImage;
        private String gender;
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

        public Builder coarseImage(FileInput coarseImage) {
            this.coarseImage = coarseImage;
            return this;
        }

        public Builder gender(String gender) {
            this.gender = gender;
            return this;
        }

        public Builder bottomGarment(FileInput bottomGarment) {
            this.bottomGarment = bottomGarment;
            return this;
        }

        public PortraitTryOnClothesRefinerParams build() {
            Objects.requireNonNull(taskType, "taskType");
            Objects.requireNonNull(personImage, "personImage");
            Objects.requireNonNull(topGarment, "topGarment");
            Objects.requireNonNull(coarseImage, "coarseImage");
            Objects.requireNonNull(gender, "gender");
            return new PortraitTryOnClothesRefinerParams(this);
        }
    }
}
