// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for HD Universal Background Removal API.
public struct CutoutHDUniversalBackgroundRemovalParams {
    /// - Image format: `JPEG` `JPG` `BMP` `PNG` - Image size: No more than 40 MB. - Image resolution: Larger than 32x32px, smaller than 10000x10000px.
    public var image: FileInput

    public init(
        image: FileInput
    ) {
        self.image = image
    }
}

extension CutoutHDUniversalBackgroundRemovalParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        return fields
    }

}
