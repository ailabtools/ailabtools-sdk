package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for Face Filters API. */
public final class PortraitFacialFiltersParams implements RequestParams {
    private final FileInput image;
    private final String resourceType;
    private final Double strength;

    private PortraitFacialFiltersParams(Builder builder) {
        this.image = builder.image;
        this.resourceType = builder.resourceType;
        this.strength = builder.strength;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getResourceType() { return resourceType; }
    public Double getStrength() { return strength; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("resource_type", resourceType);
        values.put("strength", strength);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String resourceType;
        private Double strength;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder resourceType(String resourceType) {
            this.resourceType = resourceType;
            return this;
        }

        public Builder strength(Double strength) {
            this.strength = strength;
            return this;
        }

        public PortraitFacialFiltersParams build() {
            Objects.requireNonNull(image, "image");
            Objects.requireNonNull(resourceType, "resourceType");
            Objects.requireNonNull(strength, "strength");
            return new PortraitFacialFiltersParams(this);
        }
    }
}
