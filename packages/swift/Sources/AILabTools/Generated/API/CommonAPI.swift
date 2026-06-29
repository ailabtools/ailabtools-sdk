// Generated from packages/spec.json. Do not edit manually.
import Foundation

public final class CommonAPI {
    private let requester: Requester

    internal init(requester: Requester) {
        self.requester = requester
    }

    public func commonQueryAsyncTaskResult(
        _ parameters: CommonQueryAsyncTaskResultParams
    ) async throws -> CommonQueryAsyncTaskResultResponse {
        try await requester.request(method: "GET", path: "/api/common/query-async-task-result", parameters: parameters, multipart: false)
    }

    public func commonQueryCredits(
        _ parameters: CommonQueryCreditsParams
    ) async throws -> CommonQueryCreditsResponse {
        try await requester.request(method: "GET", path: "/api/common/query-credits", parameters: parameters, multipart: false)
    }

}
