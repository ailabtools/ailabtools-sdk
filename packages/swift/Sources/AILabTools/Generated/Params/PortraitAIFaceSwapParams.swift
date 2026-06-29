// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Face Swap API.
public struct PortraitAIFaceSwapParams {
    /// The image to be modified. The face in this image will be replaced. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
    public var imageTarget: FileInput

    /// The image that provides the face to use. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px.
    public var imageTemplate: FileInput

    public init(
        imageTarget: FileInput,
        imageTemplate: FileInput
    ) {
        self.imageTarget = imageTarget
        self.imageTemplate = imageTemplate
    }
}

extension PortraitAIFaceSwapParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image_target"] = .file(imageTarget)
        fields["image_template"] = .file(imageTemplate)
        return fields
    }

}
