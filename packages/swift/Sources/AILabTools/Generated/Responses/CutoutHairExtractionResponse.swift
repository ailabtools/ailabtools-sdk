// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for Hairstyle Extraction API.
public struct CutoutHairExtractionResponseData: Decodable {
    public let elements: [JSONValue]?
    public let imageUrl: String?
    public let width: Int?
    public let height: Int?
    public let x: Int?
    public let y: Int?

    enum CodingKeys: String, CodingKey {
        case elements = "elements"
        case imageUrl = "image_url"
        case width = "width"
        case height = "height"
        case x = "x"
        case y = "y"
    }
}

/// Typed response for Hairstyle Extraction API.
public struct CutoutHairExtractionResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: CutoutHairExtractionResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let elements: [JSONValue]?
    public let imageUrl: String?
    public let width: Int?
    public let height: Int?
    public let x: Int?
    public let y: Int?

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
        case imageUrl = "image_url"
        case width = "width"
        case height = "height"
        case x = "x"
        case y = "y"
    }
}
