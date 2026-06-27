package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Breast Expansion API. */
public final class PortraitAIBreastExpansionParams implements RequestParams {
    private final String taskType;
    private final FileInput personImage;

    private PortraitAIBreastExpansionParams(Builder builder) {
        this.taskType = builder.taskType;
        this.personImage = builder.personImage;
    }

    public static Builder builder() { return new Builder(); }

    public String getTaskType() { return taskType; }
    public FileInput getPersonImage() { return personImage; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("task_type", taskType);
        values.put("person_image", personImage);
        return values;
    }

    public static final class Builder {
        private String taskType;
        private FileInput personImage;

        public Builder taskType(String taskType) {
            this.taskType = taskType;
            return this;
        }

        public Builder personImage(FileInput personImage) {
            this.personImage = personImage;
            return this;
        }

        public PortraitAIBreastExpansionParams build() {
            Objects.requireNonNull(personImage, "personImage");
            return new PortraitAIBreastExpansionParams(this);
        }
    }
}
