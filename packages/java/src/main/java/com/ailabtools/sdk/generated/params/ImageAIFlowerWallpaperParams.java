package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Flower Wallpaper API. */
public final class ImageAIFlowerWallpaperParams implements RequestParams {
    private final String name;
    private final String flowerElements;
    private final String style;
    private final String background;
    private final String aspectRatio;

    private ImageAIFlowerWallpaperParams(Builder builder) {
        this.name = builder.name;
        this.flowerElements = builder.flowerElements;
        this.style = builder.style;
        this.background = builder.background;
        this.aspectRatio = builder.aspectRatio;
    }

    public static Builder builder() { return new Builder(); }

    public String getName() { return name; }
    public String getFlowerElements() { return flowerElements; }
    public String getStyle() { return style; }
    public String getBackground() { return background; }
    public String getAspectRatio() { return aspectRatio; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("name", name);
        values.put("flower_elements", flowerElements);
        values.put("style", style);
        values.put("background", background);
        values.put("aspect_ratio", aspectRatio);
        return values;
    }

    public static final class Builder {
        private String name;
        private String flowerElements;
        private String style;
        private String background;
        private String aspectRatio;

        public Builder name(String name) {
            this.name = name;
            return this;
        }

        public Builder flowerElements(String flowerElements) {
            this.flowerElements = flowerElements;
            return this;
        }

        public Builder style(String style) {
            this.style = style;
            return this;
        }

        public Builder background(String background) {
            this.background = background;
            return this;
        }

        public Builder aspectRatio(String aspectRatio) {
            this.aspectRatio = aspectRatio;
            return this;
        }

        public ImageAIFlowerWallpaperParams build() {
            return new ImageAIFlowerWallpaperParams(this);
        }
    }
}
