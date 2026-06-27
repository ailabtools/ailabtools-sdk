package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Try on Clothes API. */
public final class PortraitTryOnClothesParams implements RequestParams {
    private final String taskType;
    private final FileInput personImage;
    private final FileInput clothesImage;
    private final String clothesType;

    private PortraitTryOnClothesParams(Builder builder) {
        this.taskType = builder.taskType;
        this.personImage = builder.personImage;
        this.clothesImage = builder.clothesImage;
        this.clothesType = builder.clothesType;
    }

    public static Builder builder() { return new Builder(); }

    public String getTaskType() { return taskType; }
    public FileInput getPersonImage() { return personImage; }
    public FileInput getClothesImage() { return clothesImage; }
    public String getClothesType() { return clothesType; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("task_type", taskType);
        values.put("person_image", personImage);
        values.put("clothes_image", clothesImage);
        values.put("clothes_type", clothesType);
        return values;
    }

    public static final class Builder {
        private String taskType;
        private FileInput personImage;
        private FileInput clothesImage;
        private String clothesType;

        public Builder taskType(String taskType) {
            this.taskType = taskType;
            return this;
        }

        public Builder personImage(FileInput personImage) {
            this.personImage = personImage;
            return this;
        }

        public Builder clothesImage(FileInput clothesImage) {
            this.clothesImage = clothesImage;
            return this;
        }

        public Builder clothesType(String clothesType) {
            this.clothesType = clothesType;
            return this;
        }

        public PortraitTryOnClothesParams build() {
            Objects.requireNonNull(taskType, "taskType");
            Objects.requireNonNull(personImage, "personImage");
            Objects.requireNonNull(clothesImage, "clothesImage");
            Objects.requireNonNull(clothesType, "clothesType");
            return new PortraitTryOnClothesParams(this);
        }
    }
}
