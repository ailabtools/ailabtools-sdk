package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Style Transfer API. */
public final class ImageStyleMigrationParams implements RequestParams {
    private final FileInput style;
    private final FileInput major;

    private ImageStyleMigrationParams(Builder builder) {
        this.style = builder.style;
        this.major = builder.major;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getStyle() { return style; }
    public FileInput getMajor() { return major; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("style", style);
        values.put("major", major);
        return values;
    }

    public static final class Builder {
        private FileInput style;
        private FileInput major;

        public Builder style(FileInput style) {
            this.style = style;
            return this;
        }

        public Builder major(FileInput major) {
            this.major = major;
            return this;
        }

        public ImageStyleMigrationParams build() {
            Objects.requireNonNull(style, "style");
            Objects.requireNonNull(major, "major");
            return new ImageStyleMigrationParams(this);
        }
    }
}
