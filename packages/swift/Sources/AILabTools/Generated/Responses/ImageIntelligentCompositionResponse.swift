// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for Intelligent Composition API.
public struct ImageIntelligentCompositionResponseData: Decodable {
    public let elements: [JSONValue]?
    public let minX: Int?
    public let maxX: Int?
    public let minY: Int?
    public let maxY: Int?
    public let score: Double?

    enum CodingKeys: String, CodingKey {
        case elements = "elements"
        case minX = "min_x"
        case maxX = "max_x"
        case minY = "min_y"
        case maxY = "max_y"
        case score = "score"
    }
}

/// Typed response for Intelligent Composition API.
public struct ImageIntelligentCompositionResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: ImageIntelligentCompositionResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let elements: [JSONValue]?
    public let minX: Int?
    public let maxX: Int?
    public let minY: Int?
    public let maxY: Int?
    public let score: Double?

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
        case minX = "min_x"
        case maxX = "max_x"
        case minY = "min_y"
        case maxY = "max_y"
        case score = "score"
    }
}
