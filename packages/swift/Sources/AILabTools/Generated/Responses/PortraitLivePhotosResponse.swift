// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for Live Photos API.
public struct PortraitLivePhotosResponseData: Decodable {
    public let video: String?

    enum CodingKeys: String, CodingKey {
        case video = "video"
    }
}

/// Typed response for Live Photos API.
public struct PortraitLivePhotosResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: PortraitLivePhotosResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let video: String?

    enum CodingKeys: String, CodingKey {
        case requestId = "request_id"
        case logId = "log_id"
        case errorCode = "error_code"
        case errorCodeString = "error_code_str"
        case errorMessage = "error_msg"
        case errorDetail = "error_detail"
        case data
        case image = "image"
        case ratio = "ratio"
        case taskType = "task_type"
        case taskId = "task_id"
        case taskStatus = "task_status"
        case video = "video"
    }
}
