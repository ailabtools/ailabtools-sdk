package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Photo to Coloring Page API. */
public final class ImagePhotoToColoringPageParams implements RequestParams {
    private final FileInput image;
    private final String prompt;
    private final String imageSize;

    private ImagePhotoToColoringPageParams(Builder builder) {
        this.image = builder.image;
        this.prompt = builder.prompt;
        this.imageSize = builder.imageSize;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getPrompt() { return prompt; }
    public String getImageSize() { return imageSize; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("prompt", prompt);
        values.put("image_size", imageSize);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String prompt;
        private String imageSize;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder prompt(String prompt) {
            this.prompt = prompt;
            return this;
        }

        public Builder imageSize(String imageSize) {
            this.imageSize = imageSize;
            return this;
        }

        public ImagePhotoToColoringPageParams build() {
            Objects.requireNonNull(image, "image");
            return new ImagePhotoToColoringPageParams(this);
        }
    }
}
