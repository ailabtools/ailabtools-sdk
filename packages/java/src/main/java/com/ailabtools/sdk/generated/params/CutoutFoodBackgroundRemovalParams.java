package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Food Background Removal API. */
public final class CutoutFoodBackgroundRemovalParams implements RequestParams {
    private final FileInput image;
    private final String returnForm;

    private CutoutFoodBackgroundRemovalParams(Builder builder) {
        this.image = builder.image;
        this.returnForm = builder.returnForm;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getReturnForm() { return returnForm; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("return_form", returnForm);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String returnForm;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder returnForm(String returnForm) {
            this.returnForm = returnForm;
            return this;
        }

        public CutoutFoodBackgroundRemovalParams build() {
            Objects.requireNonNull(image, "image");
            return new CutoutFoodBackgroundRemovalParams(this);
        }
    }
}
