package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Nail Art API. */
public final class ImageAINailArtParams implements RequestParams {
    private final FileInput image;
    private final String nailName;
    private final String nailDesc;

    private ImageAINailArtParams(Builder builder) {
        this.image = builder.image;
        this.nailName = builder.nailName;
        this.nailDesc = builder.nailDesc;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getNailName() { return nailName; }
    public String getNailDesc() { return nailDesc; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("nail_name", nailName);
        values.put("nail_desc", nailDesc);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String nailName;
        private String nailDesc;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder nailName(String nailName) {
            this.nailName = nailName;
            return this;
        }

        public Builder nailDesc(String nailDesc) {
            this.nailDesc = nailDesc;
            return this;
        }

        public ImageAINailArtParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(nailName, "nailName");
            Objects.requireNonNull(nailDesc, "nailDesc");
            return new ImageAINailArtParams(this);
        }
    }
}
