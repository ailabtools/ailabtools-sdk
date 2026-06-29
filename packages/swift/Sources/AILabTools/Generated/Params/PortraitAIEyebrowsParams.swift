// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Eyebrows API.
public struct PortraitAIEyebrowsParams {
    /// Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Reference Image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var referenceImage: FileInput

    /// Resolution. Allowed values: 1K, 2K. Default: 1K.
    public var resolution: String?

    public init(
        image: FileInput,
        referenceImage: FileInput,
        resolution: String? = nil
    ) {
        self.image = image
        self.referenceImage = referenceImage
        self.resolution = resolution
    }
}

extension PortraitAIEyebrowsParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["reference_image"] = .file(referenceImage)
        if let value = resolution { fields["resolution"] = .string(value) }
        return fields
    }

}
