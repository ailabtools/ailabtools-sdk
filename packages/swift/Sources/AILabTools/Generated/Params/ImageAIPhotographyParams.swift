// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Photography API.
public struct ImageAIPhotographyParams {
    /// Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Style name (English only). Max 500 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
    public var styleTitle: String

    /// Style description (English only). Max 1000 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
    public var styleDesc: String

    /// Output Image Aspect Ratio. Allowed values: auto, 1:1, 2:3, 3:2, 3:4, 4:3, 4:5, 5:4, 9:16, 16:9, 21:9. Default: auto.
    public var imageSize: String?

    public init(
        image: FileInput,
        styleTitle: String,
        styleDesc: String,
        imageSize: String? = nil
    ) {
        self.image = image
        self.styleTitle = styleTitle
        self.styleDesc = styleDesc
        self.imageSize = imageSize
    }
}

extension ImageAIPhotographyParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["style_title"] = .string(styleTitle)
        fields["style_desc"] = .string(styleDesc)
        if let value = imageSize { fields["image_size"] = .string(value) }
        return fields
    }

    func validate() throws {
        if styleTitle.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: styleTitle") }
        if styleDesc.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: styleDesc") }
    }
}
