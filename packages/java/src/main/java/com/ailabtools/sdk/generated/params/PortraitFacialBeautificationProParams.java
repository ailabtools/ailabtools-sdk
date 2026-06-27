package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Face Beauty Pro API. */
public final class PortraitFacialBeautificationProParams implements RequestParams {
    private final FileInput image;
    private final Integer whitening;
    private final Integer smoothing;
    private final Integer thinface;
    private final Integer shrinkFace;
    private final Integer enlargeEye;
    private final Integer removeEyebrow;
    private final Integer filterType;
    private final String taskType;

    private PortraitFacialBeautificationProParams(Builder builder) {
        this.image = builder.image;
        this.whitening = builder.whitening;
        this.smoothing = builder.smoothing;
        this.thinface = builder.thinface;
        this.shrinkFace = builder.shrinkFace;
        this.enlargeEye = builder.enlargeEye;
        this.removeEyebrow = builder.removeEyebrow;
        this.filterType = builder.filterType;
        this.taskType = builder.taskType;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Integer getWhitening() { return whitening; }
    public Integer getSmoothing() { return smoothing; }
    public Integer getThinface() { return thinface; }
    public Integer getShrinkFace() { return shrinkFace; }
    public Integer getEnlargeEye() { return enlargeEye; }
    public Integer getRemoveEyebrow() { return removeEyebrow; }
    public Integer getFilterType() { return filterType; }
    public String getTaskType() { return taskType; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("whitening", whitening);
        values.put("smoothing", smoothing);
        values.put("thinface", thinface);
        values.put("shrink_face", shrinkFace);
        values.put("enlarge_eye", enlargeEye);
        values.put("remove_eyebrow", removeEyebrow);
        values.put("filter_type", filterType);
        values.put("task_type", taskType);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Integer whitening;
        private Integer smoothing;
        private Integer thinface;
        private Integer shrinkFace;
        private Integer enlargeEye;
        private Integer removeEyebrow;
        private Integer filterType;
        private String taskType;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder whitening(Integer whitening) {
            this.whitening = whitening;
            return this;
        }

        public Builder smoothing(Integer smoothing) {
            this.smoothing = smoothing;
            return this;
        }

        public Builder thinface(Integer thinface) {
            this.thinface = thinface;
            return this;
        }

        public Builder shrinkFace(Integer shrinkFace) {
            this.shrinkFace = shrinkFace;
            return this;
        }

        public Builder enlargeEye(Integer enlargeEye) {
            this.enlargeEye = enlargeEye;
            return this;
        }

        public Builder removeEyebrow(Integer removeEyebrow) {
            this.removeEyebrow = removeEyebrow;
            return this;
        }

        public Builder filterType(Integer filterType) {
            this.filterType = filterType;
            return this;
        }

        public Builder taskType(String taskType) {
            this.taskType = taskType;
            return this;
        }

        public PortraitFacialBeautificationProParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitFacialBeautificationProParams(this);
        }
    }
}
