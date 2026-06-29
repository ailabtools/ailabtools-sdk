// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Image Erasure API.
public struct ImageErasureParams {
    /// The image to be erased.
    public var image: FileInput

    /// Mask image.
    public var userMask: FileInput

    public init(
        image: FileInput,
        userMask: FileInput
    ) {
        self.image = image
        self.userMask = userMask
    }
}

extension ImageErasureParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["user_mask"] = .file(userMask)
        return fields
    }

}
