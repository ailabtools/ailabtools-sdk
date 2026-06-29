// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for Facial Landmarks API.
public struct PortraitFacialLandmarksResponseData: Decodable {
    public let result: JSONValue?
    public let faceNum: Int?
    public let faceList: [JSONValue]?
    public let faceToken: String?
    public let location: JSONValue?
    public let left: Double?
    public let top: Double?
    public let width: Double?
    public let height: Double?
    public let rotation: Int?
    public let faceProbability: Double?
    public let angle: JSONValue?
    public let yaw: Double?
    public let pitch: Double?
    public let roll: Double?
    public let age: Double?
    public let gender: JSONValue?
    public let type: String?
    public let probability: Double?
    public let landmark4: [JSONValue]?
    public let landmark72: [JSONValue]?
    public let landmark150: JSONValue?
    public let landmark201: JSONValue?

    enum CodingKeys: String, CodingKey {
        case result = "result"
        case faceNum = "face_num"
        case faceList = "face_list"
        case faceToken = "face_token"
        case location = "location"
        case left = "left"
        case top = "top"
        case width = "width"
        case height = "height"
        case rotation = "rotation"
        case faceProbability = "face_probability"
        case angle = "angle"
        case yaw = "yaw"
        case pitch = "pitch"
        case roll = "roll"
        case age = "age"
        case gender = "gender"
        case type = "type"
        case probability = "probability"
        case landmark4 = "landmark4"
        case landmark72 = "landmark72"
        case landmark150 = "landmark150"
        case landmark201 = "landmark201"
    }
}

/// Typed response for Facial Landmarks API.
public struct PortraitFacialLandmarksResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: PortraitFacialLandmarksResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let result: JSONValue?
    public let faceNum: Int?
    public let faceList: [JSONValue]?
    public let faceToken: String?
    public let location: JSONValue?
    public let left: Double?
    public let top: Double?
    public let width: Double?
    public let height: Double?
    public let rotation: Int?
    public let faceProbability: Double?
    public let angle: JSONValue?
    public let yaw: Double?
    public let pitch: Double?
    public let roll: Double?
    public let age: Double?
    public let gender: JSONValue?
    public let type: String?
    public let probability: Double?
    public let landmark4: [JSONValue]?
    public let landmark72: [JSONValue]?
    public let landmark150: JSONValue?
    public let landmark201: JSONValue?

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
        case result = "result"
        case faceNum = "face_num"
        case faceList = "face_list"
        case faceToken = "face_token"
        case location = "location"
        case left = "left"
        case top = "top"
        case width = "width"
        case height = "height"
        case rotation = "rotation"
        case faceProbability = "face_probability"
        case angle = "angle"
        case yaw = "yaw"
        case pitch = "pitch"
        case roll = "roll"
        case age = "age"
        case gender = "gender"
        case type = "type"
        case probability = "probability"
        case landmark4 = "landmark4"
        case landmark72 = "landmark72"
        case landmark150 = "landmark150"
        case landmark201 = "landmark201"
    }
}
