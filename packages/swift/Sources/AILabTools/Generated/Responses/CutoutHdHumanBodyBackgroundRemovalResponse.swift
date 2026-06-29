// Generated from packages/spec.json. Do not edit manually.
import Foundation

public struct CutoutHdHumanBodyBackgroundRemovalElement: Decodable {
    public let imageUrl: String?

    enum CodingKeys: String, CodingKey {
        case imageUrl = "image_url"
    }
}

/// Response data for HD Human Background Removal API.
public struct CutoutHdHumanBodyBackgroundRemovalResponseData: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeStr: String?
    public let errorMsg: String?
    public let errorDetail: JSONValue?
    public let elements: [CutoutHdHumanBodyBackgroundRemovalElement]?

    enum CodingKeys: String, CodingKey {
        case requestId = "request_id"
        case logId = "log_id"
        case errorCode = "error_code"
        case errorCodeStr = "error_code_str"
        case errorMsg = "error_msg"
        case errorDetail = "error_detail"
        case elements = "elements"
    }
}

/// Typed response for HD Human Background Removal API.
public struct CutoutHdHumanBodyBackgroundRemovalResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: CutoutHdHumanBodyBackgroundRemovalResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let elements: [CutoutHdHumanBodyBackgroundRemovalElement]?

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
        case elements = "elements"
    }
}
