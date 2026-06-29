// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for Costume Background Removal API.
public struct CutoutClothingBackgroundRemovalResponseData: Decodable {
    public let elements: [JSONValue]?
    public let imageUrl: String?
    public let classUrl: JSONValue?
    public let tops: String?
    public let coat: String?
    public let skirt: String?
    public let pants: String?
    public let bag: String?
    public let shoes: String?
    public let hat: String?

    enum CodingKeys: String, CodingKey {
        case elements = "elements"
        case imageUrl = "image_url"
        case classUrl = "class_url"
        case tops = "tops"
        case coat = "coat"
        case skirt = "skirt"
        case pants = "pants"
        case bag = "bag"
        case shoes = "shoes"
        case hat = "hat"
    }
}

/// Typed response for Costume Background Removal API.
public struct CutoutClothingBackgroundRemovalResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: CutoutClothingBackgroundRemovalResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let elements: [JSONValue]?
    public let imageUrl: String?
    public let classUrl: JSONValue?
    public let tops: String?
    public let coat: String?
    public let skirt: String?
    public let pants: String?
    public let bag: String?
    public let shoes: String?
    public let hat: String?

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
        case classUrl = "class_url"
        case tops = "tops"
        case coat = "coat"
        case skirt = "skirt"
        case pants = "pants"
        case bag = "bag"
        case shoes = "shoes"
        case hat = "hat"
    }
}
