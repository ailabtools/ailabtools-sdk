// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Querying Async Task Results API.
public struct ImageQueryingAsyncTaskResultsParams {
    /// The request_id returned by the asynchronous API.
    public var jobId: String

    /// Asynchronous task type. HD_COLOUR_MIGRATION: HD Color Migration GENERATE_CARTOONIZED_IMAGE: AI Cartoon Generator
    public var type: String

    public init(
        jobId: String,
        type: String
    ) {
        self.jobId = jobId
        self.type = type
    }
}

extension ImageQueryingAsyncTaskResultsParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["job_id"] = .string(jobId)
        fields["type"] = .string(type)
        return fields
    }

    func bodyFields() -> [String: RequestValue] {
        [:]
    }

    func validate() throws {
        if jobId.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: jobId") }
        if type.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: type") }
    }
}
