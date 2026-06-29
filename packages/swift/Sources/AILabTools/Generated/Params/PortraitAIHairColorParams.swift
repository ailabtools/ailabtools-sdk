// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Hair Color API.
public struct PortraitAIHairColorParams {
    /// - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Hair Color Name (English only).
    public var name: String?

    /// Hair Color Description (English only).
    public var desc: String?

    public init(
        image: FileInput,
        name: String? = nil,
        desc: String? = nil
    ) {
        self.image = image
        self.name = name
        self.desc = desc
    }
}

extension PortraitAIHairColorParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = name { fields["name"] = .string(value) }
        if let value = desc { fields["desc"] = .string(value) }
        return fields
    }

}
