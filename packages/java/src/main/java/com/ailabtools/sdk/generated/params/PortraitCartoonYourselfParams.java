package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Cartoon Yourself API. */
public final class PortraitCartoonYourselfParams implements RequestParams {
    private final FileInput image;
    private final String type;

    private PortraitCartoonYourselfParams(Builder builder) {
        this.image = builder.image;
        this.type = builder.type;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getType() { return type; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("type", type);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String type;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder type(String type) {
            this.type = type;
            return this;
        }

        public PortraitCartoonYourselfParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(type, "type");
            return new PortraitCartoonYourselfParams(this);
        }
    }
}
