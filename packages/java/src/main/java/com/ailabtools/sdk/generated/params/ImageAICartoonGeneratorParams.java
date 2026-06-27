package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Cartoon Generator API. */
public final class ImageAICartoonGeneratorParams implements RequestParams {
    private final String taskType;
    private final FileInput image;
    private final String type;

    private ImageAICartoonGeneratorParams(Builder builder) {
        this.taskType = builder.taskType;
        this.image = builder.image;
        this.type = builder.type;
    }

    public static Builder builder() { return new Builder(); }

    public String getTaskType() { return taskType; }
    public FileInput getImage() { return image; }
    public String getType() { return type; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("task_type", taskType);
        values.put("image", image);
        values.put("type", type);
        return values;
    }

    public static final class Builder {
        private String taskType;
        private FileInput image;
        private String type;

        public Builder taskType(String taskType) {
            this.taskType = taskType;
            return this;
        }

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder type(String type) {
            this.type = type;
            return this;
        }

        public ImageAICartoonGeneratorParams build() {
            Objects.requireNonNull(taskType, "taskType");
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(type, "type");
            return new ImageAICartoonGeneratorParams(this);
        }
    }
}
