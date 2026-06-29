// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Response data for Face Analyzer Advanced API.
public struct PortraitFaceAnalyzerAdvancedResponseData: Decodable {
    public let pupils: [Double]?
    public let genderList: [Int]?
    public let expressions: [Int]?
    public let faceCount: Int?
    public let landmarks: [Double]?
    public let landmarkCount: Int?
    public let beautyList: [Double]?
    public let hatList: [Int]?
    public let faceProbabilityList: [Double]?
    public let glasses: [Int]?
    public let faceRectangles: [Int]?
    public let poseList: [Double]?
    public let ageList: [Int]?
    public let denseFeatureLength: Int?
    public let masks: [Int]?
    public let qualities: JSONValue?
    public let scoreList: [Double]?
    public let blurList: [Double]?
    public let fnfList: [Double]?
    public let glassList: [Double]?
    public let illuList: [Double]?
    public let maskList: [Double]?
    public let noiseList: [Double]?

    enum CodingKeys: String, CodingKey {
        case pupils = "pupils"
        case genderList = "gender_list"
        case expressions = "expressions"
        case faceCount = "face_count"
        case landmarks = "landmarks"
        case landmarkCount = "landmark_count"
        case beautyList = "beauty_list"
        case hatList = "hat_list"
        case faceProbabilityList = "face_probability_list"
        case glasses = "glasses"
        case faceRectangles = "face_rectangles"
        case poseList = "pose_list"
        case ageList = "age_list"
        case denseFeatureLength = "dense_feature_length"
        case masks = "masks"
        case qualities = "qualities"
        case scoreList = "score_list"
        case blurList = "blur_list"
        case fnfList = "fnf_list"
        case glassList = "glass_list"
        case illuList = "illu_list"
        case maskList = "mask_list"
        case noiseList = "noise_list"
    }
}

/// Typed response for Face Analyzer Advanced API.
public struct PortraitFaceAnalyzerAdvancedResponse: Decodable {
    public let requestId: String?
    public let logId: String?
    public let errorCode: Int?
    public let errorCodeString: String?
    public let errorMessage: String?
    public let errorDetail: ErrorDetail?
    public let data: PortraitFaceAnalyzerAdvancedResponseData?
    public let image: String?
    public let ratio: JSONValue?
    public let taskType: String?
    public let taskId: String?
    public let taskStatus: Int?
    public let pupils: [Double]?
    public let genderList: [Int]?
    public let expressions: [Int]?
    public let faceCount: Int?
    public let landmarks: [Double]?
    public let landmarkCount: Int?
    public let beautyList: [Double]?
    public let hatList: [Int]?
    public let faceProbabilityList: [Double]?
    public let glasses: [Int]?
    public let faceRectangles: [Int]?
    public let poseList: [Double]?
    public let ageList: [Int]?
    public let denseFeatureLength: Int?
    public let masks: [Int]?
    public let qualities: JSONValue?
    public let scoreList: [Double]?
    public let blurList: [Double]?
    public let fnfList: [Double]?
    public let glassList: [Double]?
    public let illuList: [Double]?
    public let maskList: [Double]?
    public let noiseList: [Double]?

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
        case pupils = "pupils"
        case genderList = "gender_list"
        case expressions = "expressions"
        case faceCount = "face_count"
        case landmarks = "landmarks"
        case landmarkCount = "landmark_count"
        case beautyList = "beauty_list"
        case hatList = "hat_list"
        case faceProbabilityList = "face_probability_list"
        case glasses = "glasses"
        case faceRectangles = "face_rectangles"
        case poseList = "pose_list"
        case ageList = "age_list"
        case denseFeatureLength = "dense_feature_length"
        case masks = "masks"
        case qualities = "qualities"
        case scoreList = "score_list"
        case blurList = "blur_list"
        case fnfList = "fnf_list"
        case glassList = "glass_list"
        case illuList = "illu_list"
        case maskList = "mask_list"
        case noiseList = "noise_list"
    }
}
