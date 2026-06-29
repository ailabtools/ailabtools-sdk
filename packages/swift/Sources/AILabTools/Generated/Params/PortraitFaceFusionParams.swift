// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Merge Portraits API.
public struct PortraitFaceFusionParams {
    /// Target image.
    public var imageTarget: FileInput

    /// Template images.
    public var imageTemplate: FileInput

    /// Face similarity, where a higher numerical value indicates greater similarity. 0: Consistent with the original template. 1: Maximum similarity with the target image.
    public var sourceSimilarity: Double?

    public init(
        imageTarget: FileInput,
        imageTemplate: FileInput,
        sourceSimilarity: Double? = nil
    ) {
        self.imageTarget = imageTarget
        self.imageTemplate = imageTemplate
        self.sourceSimilarity = sourceSimilarity
    }
}

extension PortraitFaceFusionParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image_target"] = .file(imageTarget)
        fields["image_template"] = .file(imageTemplate)
        if let value = sourceSimilarity { fields["source_similarity"] = .number(value) }
        return fields
    }

}
