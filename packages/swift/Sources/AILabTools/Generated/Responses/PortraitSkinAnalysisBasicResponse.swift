// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for Skin Analyze API.
public struct PortraitSkinAnalysisBasicResponseData: Decodable {
    public let warning: [JSONValue]?
    public let faceRectangle: JSONValue?
    public let top: Double?
    public let left: Double?
    public let width: Double?
    public let height: Double?
    public let result: JSONValue?
    public let leftEyelids: JSONValue?
    public let value: Int?
    public let confidence: Double?
    public let rightEyelids: JSONValue?
    public let eyePouch: JSONValue?
    public let darkCircle: JSONValue?
    public let foreheadWrinkle: JSONValue?
    public let crowsFeet: JSONValue?
    public let eyeFinelines: JSONValue?
    public let glabellaWrinkle: JSONValue?
    public let nasolabialFold: JSONValue?
    public let skinType: JSONValue?
    public let details: JSONValue?
    public let poresForehead: JSONValue?
    public let poresLeftCheek: JSONValue?
    public let poresRightCheek: JSONValue?
    public let poresJaw: JSONValue?
    public let blackhead: JSONValue?
    public let acne: JSONValue?
    public let mole: JSONValue?
    public let skinSpot: JSONValue?

    enum CodingKeys: String, CodingKey {
        case warning = "warning"
        case faceRectangle = "face_rectangle"
        case top = "top"
        case left = "left"
        case width = "width"
        case height = "height"
        case result = "result"
        case leftEyelids = "left_eyelids"
        case value = "value"
        case confidence = "confidence"
        case rightEyelids = "right_eyelids"
        case eyePouch = "eye_pouch"
        case darkCircle = "dark_circle"
        case foreheadWrinkle = "forehead_wrinkle"
        case crowsFeet = "crows_feet"
        case eyeFinelines = "eye_finelines"
        case glabellaWrinkle = "glabella_wrinkle"
        case nasolabialFold = "nasolabial_fold"
        case skinType = "skin_type"
        case details = "details"
        case poresForehead = "pores_forehead"
        case poresLeftCheek = "pores_left_cheek"
        case poresRightCheek = "pores_right_cheek"
        case poresJaw = "pores_jaw"
        case blackhead = "blackhead"
        case acne = "acne"
        case mole = "mole"
        case skinSpot = "skin_spot"
    }
}

/// Typed response for Skin Analyze API.
public struct PortraitSkinAnalysisBasicResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: PortraitSkinAnalysisBasicResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let warning: [JSONValue]?
    public let faceRectangle: JSONValue?
    public let top: Double?
    public let left: Double?
    public let width: Double?
    public let height: Double?
    public let result: JSONValue?
    public let leftEyelids: JSONValue?
    public let value: Int?
    public let confidence: Double?
    public let rightEyelids: JSONValue?
    public let eyePouch: JSONValue?
    public let darkCircle: JSONValue?
    public let foreheadWrinkle: JSONValue?
    public let crowsFeet: JSONValue?
    public let eyeFinelines: JSONValue?
    public let glabellaWrinkle: JSONValue?
    public let nasolabialFold: JSONValue?
    public let skinType: JSONValue?
    public let details: JSONValue?
    public let poresForehead: JSONValue?
    public let poresLeftCheek: JSONValue?
    public let poresRightCheek: JSONValue?
    public let poresJaw: JSONValue?
    public let blackhead: JSONValue?
    public let acne: JSONValue?
    public let mole: JSONValue?
    public let skinSpot: JSONValue?

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
        case warning = "warning"
        case faceRectangle = "face_rectangle"
        case top = "top"
        case left = "left"
        case width = "width"
        case height = "height"
        case result = "result"
        case leftEyelids = "left_eyelids"
        case value = "value"
        case confidence = "confidence"
        case rightEyelids = "right_eyelids"
        case eyePouch = "eye_pouch"
        case darkCircle = "dark_circle"
        case foreheadWrinkle = "forehead_wrinkle"
        case crowsFeet = "crows_feet"
        case eyeFinelines = "eye_finelines"
        case glabellaWrinkle = "glabella_wrinkle"
        case nasolabialFold = "nasolabial_fold"
        case skinType = "skin_type"
        case details = "details"
        case poresForehead = "pores_forehead"
        case poresLeftCheek = "pores_left_cheek"
        case poresRightCheek = "pores_right_cheek"
        case poresJaw = "pores_jaw"
        case blackhead = "blackhead"
        case acne = "acne"
        case mole = "mole"
        case skinSpot = "skin_spot"
    }
}
