// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Image Cropping API.
public struct ImageAIImageCroppingParams {
    /// image
    public var image: FileInput

    /// The width of the target. Unit: px.
    public var width: Int

    /// The height of the target. Unit: px.
    public var height: Int

    public init(
        image: FileInput,
        width: Int,
        height: Int
    ) {
        self.image = image
        self.width = width
        self.height = height
    }
}

extension ImageAIImageCroppingParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["width"] = .integer(width)
        fields["height"] = .integer(height)
        return fields
    }

}
