// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Age & Gender Swap API.
public struct PortraitFaceAttributeEditingParams {
    /// image
    public var image: FileInput

    /// Face editing method. TO_KID: V1 version becomes a child. TO_OLD: V1 version becomes old man. TO_FEMALE: V1 version becomes girls. TO_MALE: V1 version becomes boys. V2_AGE: V2 version age change. V2_GENDER: v2 version gender shift.
    public var actionType: String

    /// Image quality (image field image quality). Please select the appropriate option based on quality information such as masking, lighting, blurriness, and integrity of the face. If selecting a higher quality causes the image to be unprocessable, please select a lower quality to try. NONE: No control is performed. LOW: Lower quality requirements. NORMAL: General quality requirements. HIGH: Higher quality requirements. More Details
    public var qualityControl: String?

    /// When multiple faces are detected in the image, use this parameter to specify the position of the face to be edited in the image, or default to the largest face in the image if not specified. More Details
    public var faceLocation: String?

    public init(
        image: FileInput,
        actionType: String,
        qualityControl: String? = nil,
        faceLocation: String? = nil
    ) {
        self.image = image
        self.actionType = actionType
        self.qualityControl = qualityControl
        self.faceLocation = faceLocation
    }
}

extension PortraitFaceAttributeEditingParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["action_type"] = .string(actionType)
        if let value = qualityControl { fields["quality_control"] = .string(value) }
        if let value = faceLocation { fields["face_location"] = .string(value) }
        return fields
    }

    func validate() throws {
        if actionType.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: actionType") }
    }
}
