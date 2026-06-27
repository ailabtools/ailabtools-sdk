package com.ailabtools.sdk.generated.params;

import com.ailabtools.sdk.http.FileInput;
import com.ailabtools.sdk.params.RequestParams;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/** Parameters for AI Skin Enhancement Advanced API. */
public final class PortraitAISkinEnhancementAdvancedParams implements RequestParams {
    private final FileInput image;
    private final String smartSkin;
    private final String acneRemoval;
    private final String spotCorrection;
    private final String skinBrightening;
    private final String skinSmoothing;
    private final String poreControl;
    private final String wrinkleReduction;
    private final String underEyeCorrection;
    private final String scarReduction;

    private PortraitAISkinEnhancementAdvancedParams(Builder builder) {
        this.image = builder.image;
        this.smartSkin = builder.smartSkin;
        this.acneRemoval = builder.acneRemoval;
        this.spotCorrection = builder.spotCorrection;
        this.skinBrightening = builder.skinBrightening;
        this.skinSmoothing = builder.skinSmoothing;
        this.poreControl = builder.poreControl;
        this.wrinkleReduction = builder.wrinkleReduction;
        this.underEyeCorrection = builder.underEyeCorrection;
        this.scarReduction = builder.scarReduction;
    }

    public static Builder builder() { return new Builder(); }

    public FileInput getImage() { return image; }
    public String getSmartSkin() { return smartSkin; }
    public String getAcneRemoval() { return acneRemoval; }
    public String getSpotCorrection() { return spotCorrection; }
    public String getSkinBrightening() { return skinBrightening; }
    public String getSkinSmoothing() { return skinSmoothing; }
    public String getPoreControl() { return poreControl; }
    public String getWrinkleReduction() { return wrinkleReduction; }
    public String getUnderEyeCorrection() { return underEyeCorrection; }
    public String getScarReduction() { return scarReduction; }

    @Override
    public Map<String, Object> toMap() {
        Map<String, Object> values = new LinkedHashMap<>();
        values.put("image", image);
        values.put("smart_skin", smartSkin);
        values.put("acne_removal", acneRemoval);
        values.put("spot_correction", spotCorrection);
        values.put("skin_brightening", skinBrightening);
        values.put("skin_smoothing", skinSmoothing);
        values.put("pore_control", poreControl);
        values.put("wrinkle_reduction", wrinkleReduction);
        values.put("under_eye_correction", underEyeCorrection);
        values.put("scar_reduction", scarReduction);
        return values;
    }

    public static final class Builder {
        private FileInput image;
        private String smartSkin;
        private String acneRemoval;
        private String spotCorrection;
        private String skinBrightening;
        private String skinSmoothing;
        private String poreControl;
        private String wrinkleReduction;
        private String underEyeCorrection;
        private String scarReduction;

        public Builder image(FileInput image) {
            this.image = image;
            return this;
        }

        public Builder smartSkin(String smartSkin) {
            this.smartSkin = smartSkin;
            return this;
        }

        public Builder acneRemoval(String acneRemoval) {
            this.acneRemoval = acneRemoval;
            return this;
        }

        public Builder spotCorrection(String spotCorrection) {
            this.spotCorrection = spotCorrection;
            return this;
        }

        public Builder skinBrightening(String skinBrightening) {
            this.skinBrightening = skinBrightening;
            return this;
        }

        public Builder skinSmoothing(String skinSmoothing) {
            this.skinSmoothing = skinSmoothing;
            return this;
        }

        public Builder poreControl(String poreControl) {
            this.poreControl = poreControl;
            return this;
        }

        public Builder wrinkleReduction(String wrinkleReduction) {
            this.wrinkleReduction = wrinkleReduction;
            return this;
        }

        public Builder underEyeCorrection(String underEyeCorrection) {
            this.underEyeCorrection = underEyeCorrection;
            return this;
        }

        public Builder scarReduction(String scarReduction) {
            this.scarReduction = scarReduction;
            return this;
        }

        public PortraitAISkinEnhancementAdvancedParams build() {
            Objects.requireNonNull(image, "image");
            return new PortraitAISkinEnhancementAdvancedParams(this);
        }
    }
}
