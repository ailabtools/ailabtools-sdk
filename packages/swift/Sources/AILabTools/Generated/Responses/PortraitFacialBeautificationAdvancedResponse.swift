// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for Face Beauty Advanced API.
public struct PortraitFacialBeautificationAdvancedResponseData: Decodable {
    public let resultImage: String?

    enum CodingKeys: String, CodingKey {
        case resultImage = "result_image"
    }
}

/// Typed response for Face Beauty Advanced API.
public struct PortraitFacialBeautificationAdvancedResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: PortraitFacialBeautificationAdvancedResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let resultImage: String?

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
        case resultImage = "result_image"
    }
}
