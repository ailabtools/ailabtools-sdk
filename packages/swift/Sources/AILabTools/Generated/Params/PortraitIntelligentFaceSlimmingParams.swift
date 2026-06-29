// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Face Slimming API.
public struct PortraitIntelligentFaceSlimmingParams {
    /// image
    public var image: FileInput

    /// Standard strength. The higher the value, the more pronounced the face slimming effect.
    public var slimDegree: Double?

    public init(
        image: FileInput,
        slimDegree: Double? = nil
    ) {
        self.image = image
        self.slimDegree = slimDegree
    }
}

extension PortraitIntelligentFaceSlimmingParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = slimDegree { fields["slim_degree"] = .number(value) }
        return fields
    }

}
