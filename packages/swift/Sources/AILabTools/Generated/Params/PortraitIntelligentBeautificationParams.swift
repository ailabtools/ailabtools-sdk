// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Smart Beauty API.
public struct PortraitIntelligentBeautificationParams {
    /// image_target
    public var imageTarget: FileInput

    /// Multiple-face beauty strategy. When set to 1, beauty enhancement is applied to all faces (it is recommended that the number of faces in the image be less than 18, as too many faces may lead to instability). When set to any other value or not specified, only the largest face is processed.
    public var multiFace: String?

    /// Beauty level.
    public var beautyLevel: Double?

    /// Task Type. sync: Synchronous tasks.
    public var taskType: String?

    public init(
        imageTarget: FileInput,
        multiFace: String? = nil,
        beautyLevel: Double? = nil,
        taskType: String? = nil
    ) {
        self.imageTarget = imageTarget
        self.multiFace = multiFace
        self.beautyLevel = beautyLevel
        self.taskType = taskType
    }
}

extension PortraitIntelligentBeautificationParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image_target"] = .file(imageTarget)
        if let value = multiFace { fields["multi_face"] = .string(value) }
        if let value = beautyLevel { fields["beauty_level"] = .number(value) }
        if let value = taskType { fields["task_type"] = .string(value) }
        return fields
    }

}
