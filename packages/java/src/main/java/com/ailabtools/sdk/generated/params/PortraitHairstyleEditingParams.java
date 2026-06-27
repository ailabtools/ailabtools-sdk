package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Hairstyle Changer API. */
public final class PortraitHairstyleEditingParams implements RequestParams {
    private final FileInput imageTarget;
    private final Integer hairType;

    private PortraitHairstyleEditingParams(Builder builder) {
        this.imageTarget = builder.imageTarget;
        this.hairType = builder.hairType;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImageTarget() { return imageTarget; }
    public Integer getHairType() { return hairType; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image_target", imageTarget);
        values.put("hair_type", hairType);
        return values;
    }

    public static final class Builder {
        private FileInput imageTarget;
        private Integer hairType;

        public Builder imageTarget(FileInput imageTarget) {
            this.imageTarget = imageTarget;
            return this;
        }

        public Builder hairType(Integer hairType) {
            this.hairType = hairType;
            return this;
        }

        public PortraitHairstyleEditingParams build() {
            Objects.requireNonNull(imageTarget, "imageTarget");
            return new PortraitHairstyleEditingParams(this);
        }
    }
}
