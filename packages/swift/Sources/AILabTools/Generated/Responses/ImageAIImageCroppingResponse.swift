// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for AI Image Cropping API.
public struct ImageAIImageCroppingResponseData: Decodable {
    public let url: String?
    public let retainLocation: JSONValue?
    public let width: Int?
    public let height: Int?
    public let y: Int?
    public let x: Int?

    enum CodingKeys: String, CodingKey {
        case url = "url"
        case retainLocation = "retain_location"
        case width = "width"
        case height = "height"
        case y = "y"
        case x = "x"
    }
}

/// Typed response for AI Image Cropping API.
public struct ImageAIImageCroppingResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: ImageAIImageCroppingResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let url: String?
    public let retainLocation: JSONValue?
    public let width: Int?
    public let height: Int?
    public let y: Int?
    public let x: Int?

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
        case url = "url"
        case retainLocation = "retain_location"
        case width = "width"
        case height = "height"
        case y = "y"
        case x = "x"
    }
}
