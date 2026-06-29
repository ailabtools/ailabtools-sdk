// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Live Photos API.
public struct PortraitLivePhotosParams {
    /// image_target
    public var imageTarget: FileInput

    /// Live photo type. 0: Avatar version. 1: Full body version.
    public var type: Int?

    public init(
        imageTarget: FileInput,
        type: Int? = nil
    ) {
        self.imageTarget = imageTarget
        self.type = type
    }
}

extension PortraitLivePhotosParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image_target"] = .file(imageTarget)
        if let value = type { fields["type"] = .integer(value) }
        return fields
    }

}
