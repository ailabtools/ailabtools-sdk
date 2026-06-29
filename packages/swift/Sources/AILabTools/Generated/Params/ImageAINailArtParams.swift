// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Nail Art API.
public struct ImageAINailArtParams {
    /// Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Nail Name (English only). Max 500 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
    public var nailName: String

    /// Nail Description (English only). Max 1000 characters; extra text will be automatically truncated. Use standard vocabulary to pass review.
    public var nailDesc: String

    public init(
        image: FileInput,
        nailName: String,
        nailDesc: String
    ) {
        self.image = image
        self.nailName = nailName
        self.nailDesc = nailDesc
    }
}

extension ImageAINailArtParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["nail_name"] = .string(nailName)
        fields["nail_desc"] = .string(nailDesc)
        return fields
    }

    func validate() throws {
        if nailName.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: nailName") }
        if nailDesc.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: nailDesc") }
    }
}
