// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Cartoon Generator API.
public struct ImageAICartoonGeneratorParams {
    /// Task Type. async: Asynchronous tasks.
    public var taskType: String

    /// image
    public var image: FileInput

    /// Style. Range of values
    public var type: String

    public init(
        taskType: String,
        image: FileInput,
        type: String
    ) {
        self.taskType = taskType
        self.image = image
        self.type = type
    }
}

extension ImageAICartoonGeneratorParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["task_type"] = .string(taskType)
        fields["image"] = .file(image)
        fields["type"] = .string(type)
        return fields
    }

    func validate() throws {
        if taskType.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: taskType") }
        if type.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: type") }
    }
}
