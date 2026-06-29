import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

public final class AILabToolsClient {
    public let common: CommonAPI
    public let cutout: CutoutAPI
    public let image: ImageAPI
    public let portrait: PortraitAPI
    public let background: BackgroundAPI

    private let session: URLSession
    private let ownsSession: Bool

    public init(
        apiKey: String,
        session: URLSession? = nil,
        baseURL: URL = URL(string: "https://www.ailabapi.com")!,
        timeout: TimeInterval = 30
    ) throws {
        guard !apiKey.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            throw AILabToolsError.invalidParameter("AILabTools API key must not be empty.")
        }
        if let session {
            self.session = session
            ownsSession = false
        } else {
            let configuration = URLSessionConfiguration.default
            configuration.timeoutIntervalForRequest = timeout
            self.session = URLSession(configuration: configuration)
            ownsSession = true
        }
        let requester = Requester(
            session: self.session,
            apiKey: apiKey,
            baseURL: baseURL,
            timeout: timeout
        )
        common = CommonAPI(requester: requester)
        cutout = CutoutAPI(requester: requester)
        image = ImageAPI(requester: requester)
        portrait = PortraitAPI(requester: requester)
        background = BackgroundAPI(cutout: cutout)
    }

    public func waitForTask(
        _ taskId: String,
        interval: TimeInterval = 5,
        timeout: TimeInterval = 300,
        throwOnFailure: Bool = true
    ) async throws -> CommonQueryAsyncTaskResultResponse {
        guard !taskId.isEmpty else {
            throw AILabToolsError.invalidParameter("Task ID must not be empty.")
        }
        let deadline = Date().addingTimeInterval(timeout)
        while Date() <= deadline {
            try Task.checkCancellation()
            let result = try await common.commonQueryAsyncTaskResult(
                CommonQueryAsyncTaskResultParams(taskId: taskId)
            )
            let status = result.data?.taskStatus ?? result.taskStatus
            if status == 2 { return result }
            if status == 3 {
                if throwOnFailure {
                    throw AILabToolsError.invalidResponse("AILabTools task failed: \(taskId)")
                }
                return result
            }
            let nanoseconds = UInt64(max(0, interval) * 1_000_000_000)
            try await Task.sleep(nanoseconds: nanoseconds)
        }
        throw AILabToolsError.invalidResponse("AILabTools task timed out: \(taskId)")
    }

    public func close() {
        if ownsSession {
            session.invalidateAndCancel()
        }
    }

    deinit {
        close()
    }
}
