package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Change Facial Expressions Advanced API. */
public final class PortraitExpressionEditingAdvancedParams implements RequestParams {
    private final FileInput image;
    private final String expression;

    private PortraitExpressionEditingAdvancedParams(Builder builder) {
        this.image = builder.image;
        this.expression = builder.expression;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getExpression() { return expression; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("expression", expression);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String expression;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder expression(String expression) {
            this.expression = expression;
            return this;
        }

        public PortraitExpressionEditingAdvancedParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(expression, "expression");
            return new PortraitExpressionEditingAdvancedParams(this);
        }
    }
}
