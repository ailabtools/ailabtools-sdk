// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Face Filters API.
public struct PortraitFacialFiltersParams {
    /// image
    public var image: FileInput

    /// Picture style. More Details
    public var resourceType: String

    /// Filter intensity.
    public var strength: Double

    public init(
        image: FileInput,
        resourceType: String,
        strength: Double
    ) {
        self.image = image
        self.resourceType = resourceType
        self.strength = strength
    }
}

extension PortraitFacialFiltersParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["resource_type"] = .string(resourceType)
        fields["strength"] = .number(strength)
        return fields
    }

    func validate() throws {
        if resourceType.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: resourceType") }
    }
}
