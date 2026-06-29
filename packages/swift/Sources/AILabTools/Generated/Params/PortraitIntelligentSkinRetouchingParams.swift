// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Skin Beauty API.
public struct PortraitIntelligentSkinRetouchingParams {
    /// image
    public var image: FileInput

    /// Dermabrasion intensity. The higher the value, the less visible the skin texture.
    public var retouchDegree: Double?

    /// Whitening strength. The higher the value, the whiter the skin.
    public var whiteningDegree: Double?

    public init(
        image: FileInput,
        retouchDegree: Double? = nil,
        whiteningDegree: Double? = nil
    ) {
        self.image = image
        self.retouchDegree = retouchDegree
        self.whiteningDegree = whiteningDegree
    }
}

extension PortraitIntelligentSkinRetouchingParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = retouchDegree { fields["retouch_degree"] = .number(value) }
        if let value = whiteningDegree { fields["whitening_degree"] = .number(value) }
        return fields
    }

}
