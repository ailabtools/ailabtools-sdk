// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Hairstyle Changer API.
public struct PortraitHairstyleEditingParams {
    /// image_target
    public var imageTarget: FileInput

    /// Hairstyle type. 0: Bangs. 1: Long hair. 2: Bangs with long hair. 3: Increase the number of hair. 901: Straight hair.
    public var hairType: Int?

    public init(
        imageTarget: FileInput,
        hairType: Int? = nil
    ) {
        self.imageTarget = imageTarget
        self.hairType = hairType
    }
}

extension PortraitHairstyleEditingParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image_target"] = .file(imageTarget)
        if let value = hairType { fields["hair_type"] = .integer(value) }
        return fields
    }

}
