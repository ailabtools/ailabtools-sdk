// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Eyeshadow Try-On API.
public struct PortraitAIEyeshadowTryOnParams {
    /// Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Built-in eyeshadow preset. Provide this field or `image_template`. If both are provided, `eyeshadow_style` takes precedence. See [Supported eyeshadow styles](https://www.ailabtools.com/docs/ai-portrait/editing/ai-eyeshadow/api#eyeshadow_style). Allowed values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36.
    public var eyeshadowStyle: String?

    /// Reference image for eyeshadow transfer. Provide this field or `eyeshadow_style`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var imageTemplate: FileInput?

    /// Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto.
    public var aspectRatio: String?

    public init(
        image: FileInput,
        eyeshadowStyle: String? = nil,
        imageTemplate: FileInput? = nil,
        aspectRatio: String? = nil
    ) {
        self.image = image
        self.eyeshadowStyle = eyeshadowStyle
        self.imageTemplate = imageTemplate
        self.aspectRatio = aspectRatio
    }
}

extension PortraitAIEyeshadowTryOnParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = eyeshadowStyle { fields["eyeshadow_style"] = .string(value) }
        if let value = imageTemplate { fields["image_template"] = .file(value) }
        if let value = aspectRatio { fields["aspect_ratio"] = .string(value) }
        return fields
    }

    func validate() throws {
        if eyeshadowStyle == nil && imageTemplate == nil { throw AILabToolsError.invalidParameter("At least one of eyeshadowStyle, imageTemplate is required") }
    }
}
