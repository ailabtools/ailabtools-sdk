// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Photo to Coloring Page API.
public struct ImagePhotoToColoringPageParams {
    /// Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Prompt (English only). Max 3000 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
    public var prompt: String?

    /// Output Image Aspect Ratio. Allowed values: A4, auto, 1:1, 2:3, 3:2, 3:4, 4:3, 4:5, 5:4, 9:16, 16:9, 21:9. Default: A4.
    public var imageSize: String?

    public init(
        image: FileInput,
        prompt: String? = nil,
        imageSize: String? = nil
    ) {
        self.image = image
        self.prompt = prompt
        self.imageSize = imageSize
    }
}

extension ImagePhotoToColoringPageParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = prompt { fields["prompt"] = .string(value) }
        if let value = imageSize { fields["image_size"] = .string(value) }
        return fields
    }

}
