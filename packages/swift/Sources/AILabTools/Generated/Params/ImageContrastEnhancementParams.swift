// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Image Contrast Enhancement API.
public struct ImageContrastEnhancementParams {
    /// image
    public var image: FileInput

    public init(
        image: FileInput
    ) {
        self.image = image
    }
}

extension ImageContrastEnhancementParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        return fields
    }

}
