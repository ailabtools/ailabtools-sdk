// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Nail Art Pro API.
public struct ImageAINailArtProParams {
    /// Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Reference image for guidance. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var referenceImage: FileInput

    /// Output resolution. Allowed values: 1K, 2K. Default: 1K.
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

extension ImageAINailArtProParams: RequestParameters {
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
