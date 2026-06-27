package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Face Beauty API. */
public final class PortraitFacialBeautificationParams implements RequestParams {
    private final FileInput image;
    private final Double sharp;
    private final Double smooth;
    private final Double white;

    private PortraitFacialBeautificationParams(Builder builder) {
        this.image = builder.image;
        this.sharp = builder.sharp;
        this.smooth = builder.smooth;
        this.white = builder.white;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public Double getSharp() { return sharp; }
    public Double getSmooth() { return smooth; }
    public Double getWhite() { return white; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("sharp", sharp);
        values.put("smooth", smooth);
        values.put("white", white);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private Double sharp;
        private Double smooth;
        private Double white;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder sharp(Double sharp) {
            this.sharp = sharp;
            return this;
        }

        public Builder smooth(Double smooth) {
            this.smooth = smooth;
            return this;
        }

        public Builder white(Double white) {
            this.white = white;
            return this;
        }

        public PortraitFacialBeautificationParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(sharp, "sharp");
            Objects.requireNonNull(smooth, "smooth");
            Objects.requireNonNull(white, "white");
            return new PortraitFacialBeautificationParams(this);
        }
    }
}
