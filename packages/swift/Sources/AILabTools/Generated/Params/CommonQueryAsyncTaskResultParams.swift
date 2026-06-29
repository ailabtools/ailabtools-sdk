// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Querying Async Task Results API.
public struct CommonQueryAsyncTaskResultParams {
    /// The task_id returned by the asynchronous API.
    public var taskId: String

    public init(
        taskId: String
    ) {
        self.taskId = taskId
    }
}

extension CommonQueryAsyncTaskResultParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["task_id"] = .string(taskId)
        return fields
    }

    func bodyFields() -> [String: RequestValue] {
        [:]
    }

    func validate() throws {
        if taskId.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: taskId") }
    }
}
