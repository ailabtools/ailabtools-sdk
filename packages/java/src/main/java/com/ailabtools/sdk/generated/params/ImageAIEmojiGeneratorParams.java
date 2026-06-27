package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Emoji Generator API. */
public final class ImageAIEmojiGeneratorParams implements RequestParams {
    private final FileInput image;
    private final String expression;
    private final String style;
    private final String scene;
    private final String filler;

    private ImageAIEmojiGeneratorParams(Builder builder) {
        this.image = builder.image;
        this.expression = builder.expression;
        this.style = builder.style;
        this.scene = builder.scene;
        this.filler = builder.filler;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getExpression() { return expression; }
    public String getStyle() { return style; }
    public String getScene() { return scene; }
    public String getFiller() { return filler; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("expression", expression);
        values.put("style", style);
        values.put("scene", scene);
        values.put("filler", filler);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String expression;
        private String style;
        private String scene;
        private String filler;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder expression(String expression) {
            this.expression = expression;
            return this;
        }

        public Builder style(String style) {
            this.style = style;
            return this;
        }

        public Builder scene(String scene) {
            this.scene = scene;
            return this;
        }

        public Builder filler(String filler) {
            this.filler = filler;
            return this;
        }

        public ImageAIEmojiGeneratorParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(expression, "expression");
            Objects.requireNonNull(style, "style");
            Objects.requireNonNull(scene, "scene");
            return new ImageAIEmojiGeneratorParams(this);
        }
    }
}
