// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Bald API.
public struct PortraitAIBaldParams {
    /// - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    public init(
        image: FileInput
    ) {
        self.image = image
    }
}

extension PortraitAIBaldParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        return fields
    }

}
