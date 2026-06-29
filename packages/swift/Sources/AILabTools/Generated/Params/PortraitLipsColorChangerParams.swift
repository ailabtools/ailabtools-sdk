// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Lips Color Changer API.
public struct PortraitLipsColorChangerParams {
    /// image
    public var image: FileInput

    /// Lip Color Info. You can enter up to 3 lip_color_info to enable changing the lip color for up to 3 faces in a graph. Description
    public var lipColorInfos: String

    public init(
        image: FileInput,
        lipColorInfos: String
    ) {
        self.image = image
        self.lipColorInfos = lipColorInfos
    }
}

extension PortraitLipsColorChangerParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["lip_color_infos"] = .string(lipColorInfos)
        return fields
    }

    func validate() throws {
        if lipColorInfos.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: lipColorInfos") }
    }
}
