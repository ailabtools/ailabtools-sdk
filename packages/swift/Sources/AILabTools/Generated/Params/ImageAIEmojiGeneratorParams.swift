// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Emoji Generator API.
public struct ImageAIEmojiGeneratorParams {
    /// Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Expression (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
    public var expression: String

    /// Style (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
    public var style: String

    /// Scene (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
    public var scene: String

    /// Filler Text (English only). Max 20 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
    public var filler: String?

    public init(
        image: FileInput,
        expression: String,
        style: String,
        scene: String,
        filler: String? = nil
    ) {
        self.image = image
        self.expression = expression
        self.style = style
        self.scene = scene
        self.filler = filler
    }
}

extension ImageAIEmojiGeneratorParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["expression"] = .string(expression)
        fields["style"] = .string(style)
        fields["scene"] = .string(scene)
        if let value = filler { fields["filler"] = .string(value) }
        return fields
    }

    func validate() throws {
        if expression.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: expression") }
        if style.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: style") }
        if scene.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: scene") }
    }
}
