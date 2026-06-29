// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Image Sharpness Enhancement API.
public struct ImageClarityEnhancementParams {
    /// image
    public var image: FileInput

    public init(
        image: FileInput
    ) {
        self.image = image
    }
}

extension ImageClarityEnhancementParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        return fields
    }

}
