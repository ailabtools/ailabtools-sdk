// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Lip Bite Expressions API.
public struct PortraitAILipBiteExpressionsParams {
    /// - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Specifies the number of emoji stickers to generate in a single image. Allowed values: 1, 4, 6, 9. Default: 1.
    public var gridCount: Int?

    /// Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto.
    public var aspectRatio: String?

    public init(
        image: FileInput,
        gridCount: Int? = nil,
        aspectRatio: String? = nil
    ) {
        self.image = image
        self.gridCount = gridCount
        self.aspectRatio = aspectRatio
    }
}

extension PortraitAILipBiteExpressionsParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = gridCount { fields["grid_count"] = .integer(value) }
        if let value = aspectRatio { fields["aspect_ratio"] = .string(value) }
        return fields
    }

}
