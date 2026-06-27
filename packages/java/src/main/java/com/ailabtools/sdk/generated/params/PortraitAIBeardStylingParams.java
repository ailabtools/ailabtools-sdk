package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Beard Styling API. */
public final class PortraitAIBeardStylingParams implements RequestParams {
    private final FileInput image;
    private final String beard;
    private final FileInput imageTemplate;

    private PortraitAIBeardStylingParams(Builder builder) {
        this.image = builder.image;
        this.beard = builder.beard;
        this.imageTemplate = builder.imageTemplate;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getBeard() { return beard; }
    public FileInput getImageTemplate() { return imageTemplate; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("beard", beard);
        values.put("image_template", imageTemplate);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String beard;
        private FileInput imageTemplate;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder beard(String beard) {
            this.beard = beard;
            return this;
        }

        public Builder imageTemplate(FileInput imageTemplate) {
            this.imageTemplate = imageTemplate;
            return this;
        }

        public PortraitAIBeardStylingParams build() {
            Objects.requireNonNull(image, "image");
            if (beard == null && imageTemplate == null) {
                throw new IllegalArgumentException("At least one of beard, imageTemplate is required");
            }
            return new PortraitAIBeardStylingParams(this);
        }
    }
}
