package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Lips Color Changer API. */
public final class PortraitLipsColorChangerParams implements RequestParams {
    private final FileInput image;
    private final String lipColorInfos;

    private PortraitLipsColorChangerParams(Builder builder) {
        this.image = builder.image;
        this.lipColorInfos = builder.lipColorInfos;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getLipColorInfos() { return lipColorInfos; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("lip_color_infos", lipColorInfos);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String lipColorInfos;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder lipColorInfos(String lipColorInfos) {
            this.lipColorInfos = lipColorInfos;
            return this;
        }

        public PortraitLipsColorChangerParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(lipColorInfos, "lipColorInfos");
            return new PortraitLipsColorChangerParams(this);
        }
    }
}
