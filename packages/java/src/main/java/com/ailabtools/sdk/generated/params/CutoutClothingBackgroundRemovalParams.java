package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Costume Background Removal API. */
public final class CutoutClothingBackgroundRemovalParams implements RequestParams {
    private final FileInput image;
    private final Integer outMode;
    private final String clothClass;
    private final String returnForm;

    private CutoutClothingBackgroundRemovalParams(Builder builder) {
        this.image = builder.image;
        this.outMode = builder.outMode;
        this.clothClass = builder.clothClass;
        this.returnForm = builder.returnForm;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Integer getOutMode() { return outMode; }
    public String getClothClass() { return clothClass; }
    public String getReturnForm() { return returnForm; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("out_mode", outMode);
        values.put("cloth_class", clothClass);
        values.put("return_form", returnForm);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Integer outMode;
        private String clothClass;
        private String returnForm;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder outMode(Integer outMode) {
            this.outMode = outMode;
            return this;
        }

        public Builder clothClass(String clothClass) {
            this.clothClass = clothClass;
            return this;
        }

        public Builder returnForm(String returnForm) {
            this.returnForm = returnForm;
            return this;
        }

        public CutoutClothingBackgroundRemovalParams build() {
            Objects.requireNonNull(image, "image");
            return new CutoutClothingBackgroundRemovalParams(this);
        }
    }
}
