// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Image Composition Aesthetics Score API.
public struct ImageCompositionAestheticsScoreParams {
    /// image
    public var image: FileInput

    public init(
        image: FileInput
    ) {
        self.image = image
    }
}

extension ImageCompositionAestheticsScoreParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        return fields
    }

}
