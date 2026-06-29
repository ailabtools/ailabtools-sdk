// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Skin Enhancement Advanced API.
public struct PortraitAISkinEnhancementAdvancedParams {
    /// - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Smart all-in-one skin beautification. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
    public var smartSkin: String?

    /// Acne and blemish removal. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
    public var acneRemoval: String?

    /// Spot and pigmentation correction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
    public var spotCorrection: String?

    /// Skin brightening and tone enhancement. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
    public var skinBrightening: String?

    /// Skin smoothing and refinement. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
    public var skinSmoothing: String?

    /// Pore and oil control. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
    public var poreControl: String?

    /// Wrinkle and fine-line reduction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
    public var wrinkleReduction: String?

    /// Under-eye correction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
    public var underEyeCorrection: String?

    /// Scar and skin damage reduction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0.
    public var scarReduction: String?

    public init(
        image: FileInput,
        smartSkin: String? = nil,
        acneRemoval: String? = nil,
        spotCorrection: String? = nil,
        skinBrightening: String? = nil,
        skinSmoothing: String? = nil,
        poreControl: String? = nil,
        wrinkleReduction: String? = nil,
        underEyeCorrection: String? = nil,
        scarReduction: String? = nil
    ) {
        self.image = image
        self.smartSkin = smartSkin
        self.acneRemoval = acneRemoval
        self.spotCorrection = spotCorrection
        self.skinBrightening = skinBrightening
        self.skinSmoothing = skinSmoothing
        self.poreControl = poreControl
        self.wrinkleReduction = wrinkleReduction
        self.underEyeCorrection = underEyeCorrection
        self.scarReduction = scarReduction
    }
}

extension PortraitAISkinEnhancementAdvancedParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = smartSkin { fields["smart_skin"] = .string(value) }
        if let value = acneRemoval { fields["acne_removal"] = .string(value) }
        if let value = spotCorrection { fields["spot_correction"] = .string(value) }
        if let value = skinBrightening { fields["skin_brightening"] = .string(value) }
        if let value = skinSmoothing { fields["skin_smoothing"] = .string(value) }
        if let value = poreControl { fields["pore_control"] = .string(value) }
        if let value = wrinkleReduction { fields["wrinkle_reduction"] = .string(value) }
        if let value = underEyeCorrection { fields["under_eye_correction"] = .string(value) }
        if let value = scarReduction { fields["scar_reduction"] = .string(value) }
        return fields
    }

}
