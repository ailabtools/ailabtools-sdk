// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Face Rating API.
public struct PortraitAIFaceRatingParams {
    /// - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto.
    public var aspectRatio: String?

    public init(
        image: FileInput,
        aspectRatio: String? = nil
    ) {
        self.image = image
        self.aspectRatio = aspectRatio
    }
}

extension PortraitAIFaceRatingParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = aspectRatio { fields["aspect_ratio"] = .string(value) }
        return fields
    }

}
