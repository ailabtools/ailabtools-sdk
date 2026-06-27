package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Eyelashes API. */
public final class PortraitAIEyelashesParams implements RequestParams {
    private final FileInput image;
    private final String name;
    private final String desc;

    private PortraitAIEyelashesParams(Builder builder) {
        this.image = builder.image;
        this.name = builder.name;
        this.desc = builder.desc;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getName() { return name; }
    public String getDesc() { return desc; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("name", name);
        values.put("desc", desc);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String name;
        private String desc;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder name(String name) {
            this.name = name;
            return this;
        }

        public Builder desc(String desc) {
            this.desc = desc;
            return this;
        }

        public PortraitAIEyelashesParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitAIEyelashesParams(this);
        }
    }
}
