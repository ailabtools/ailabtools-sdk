package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Live Photos API. */
public final class PortraitLivePhotosParams implements RequestParams {
    private final FileInput imageTarget;
    private final Integer type;

    private PortraitLivePhotosParams(Builder builder) {
        this.imageTarget = builder.imageTarget;
        this.type = builder.type;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImageTarget() { return imageTarget; }
    public Integer getType() { return type; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image_target", imageTarget);
        values.put("type", type);
        return values;
    }

    public static final class Builder {
        private FileInput imageTarget;
        private Integer type;

        public Builder imageTarget(FileInput imageTarget) {
            this.imageTarget = imageTarget;
            return this;
        }

        public Builder type(Integer type) {
            this.type = type;
            return this;
        }

        public PortraitLivePhotosParams build() {
            Objects.requireNonNull(imageTarget, "imageTarget");
            return new PortraitLivePhotosParams(this);
        }
    }
}
