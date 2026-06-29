// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Fat Filter API.
public struct PortraitAIFatFilterParams {
    /// - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    public init(
        image: FileInput
    ) {
        self.image = image
    }
}

extension PortraitAIFatFilterParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        return fields
    }

}
