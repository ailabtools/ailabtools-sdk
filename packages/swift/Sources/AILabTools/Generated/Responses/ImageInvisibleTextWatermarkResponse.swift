// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for Image Invisible Text Watermark API.
public struct ImageInvisibleTextWatermarkResponseData: Decodable {
    public let watermarkImageUrl: String?
    public let textImageUrl: String?

    enum CodingKeys: String, CodingKey {
        case watermarkImageUrl = "watermark_image_url"
        case textImageUrl = "text_image_url"
    }
}

/// Typed response for Image Invisible Text Watermark API.
public struct ImageInvisibleTextWatermarkResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: ImageInvisibleTextWatermarkResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let watermarkImageUrl: String?
    public let textImageUrl: String?

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
        case watermarkImageUrl = "watermark_image_url"
        case textImageUrl = "text_image_url"
    }
}
