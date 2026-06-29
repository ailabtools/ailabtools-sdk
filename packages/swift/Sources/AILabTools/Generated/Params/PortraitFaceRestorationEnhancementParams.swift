// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Face Enhancer API.
public struct PortraitFaceRestorationEnhancementParams {
    /// image
    public var image: FileInput

    public init(
        image: FileInput
    ) {
        self.image = image
    }
}

extension PortraitFaceRestorationEnhancementParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        return fields
    }

}
