package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Photography API. */
public final class ImageAIPhotographyParams implements RequestParams {
    private final FileInput image;
    private final String styleTitle;
    private final String styleDesc;
    private final String imageSize;

    private ImageAIPhotographyParams(Builder builder) {
        this.image = builder.image;
        this.styleTitle = builder.styleTitle;
        this.styleDesc = builder.styleDesc;
        this.imageSize = builder.imageSize;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getStyleTitle() { return styleTitle; }
    public String getStyleDesc() { return styleDesc; }
    public String getImageSize() { return imageSize; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("style_title", styleTitle);
        values.put("style_desc", styleDesc);
        values.put("image_size", imageSize);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String styleTitle;
        private String styleDesc;
        private String imageSize;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder styleTitle(String styleTitle) {
            this.styleTitle = styleTitle;
            return this;
        }

        public Builder styleDesc(String styleDesc) {
            this.styleDesc = styleDesc;
            return this;
        }

        public Builder imageSize(String imageSize) {
            this.imageSize = imageSize;
            return this;
        }

        public ImageAIPhotographyParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(styleTitle, "styleTitle");
            Objects.requireNonNull(styleDesc, "styleDesc");
            return new ImageAIPhotographyParams(this);
        }
    }
}
