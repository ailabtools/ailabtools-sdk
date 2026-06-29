// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for Skin Analyze Pro API.
public struct PortraitSkinAnalysisProfessionalResponseData: Decodable {
    public let leftSideResult: String?
    public let rightSideResult: String?
    public let faceRectangle: JSONValue?
    public let result: JSONValue?

    enum CodingKeys: String, CodingKey {
        case leftSideResult = "left_side_result"
        case rightSideResult = "right_side_result"
        case faceRectangle = "face_rectangle"
        case result = "result"
    }
}

/// Typed response for Skin Analyze Pro API.
public struct PortraitSkinAnalysisProfessionalResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: PortraitSkinAnalysisProfessionalResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let leftSideResult: String?
    public let rightSideResult: String?
    public let faceRectangle: JSONValue?
    public let result: JSONValue?

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
        case leftSideResult = "left_side_result"
        case rightSideResult = "right_side_result"
        case faceRectangle = "face_rectangle"
        case result = "result"
    }
}
