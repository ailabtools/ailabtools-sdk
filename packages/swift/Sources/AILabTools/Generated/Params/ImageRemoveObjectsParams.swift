// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Remove Objects API.
public struct ImageRemoveObjectsParams {
    /// Original image.
    public var image: FileInput

    /// Mask image.
    public var mask: FileInput

    public init(
        image: FileInput,
        mask: FileInput
    ) {
        self.image = image
        self.mask = mask
    }
}

extension ImageRemoveObjectsParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["mask"] = .file(mask)
        return fields
    }

}
