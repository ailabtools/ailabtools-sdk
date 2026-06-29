// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Hair Loss Simulation API.
public struct PortraitAIHairLossSimulationParams {
    /// - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Hair loss level. See [Supported level values](https://www.ailabtools.com/docs/ai-portrait/editing/ai-hair-loss-simulation/api#level). Allowed values: man_1, man_2, man_3, man_4, man_5, man_6, man_7, woman_1, woman_2, woman_3, woman_4, woman_5, woman_6, woman_7.
    public var level: String

    public init(
        image: FileInput,
        level: String
    ) {
        self.image = image
        self.level = level
    }
}

extension PortraitAIHairLossSimulationParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["level"] = .string(level)
        return fields
    }

    func validate() throws {
        if level.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: level") }
    }
}
