// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Photo Retouch API.
public struct ImagePhotoEditingParams {
    /// Images that require a style transformation.
    public var image: FileInput

    /// Reference image.
    public var style: FileInput

    public init(
        image: FileInput,
        style: FileInput
    ) {
        self.image = image
        self.style = style
    }
}

extension ImagePhotoEditingParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["style"] = .file(style)
        return fields
    }

}
