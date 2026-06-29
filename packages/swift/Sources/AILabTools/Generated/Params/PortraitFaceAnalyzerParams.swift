// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Face Analyzer API.
public struct PortraitFaceAnalyzerParams {
    /// image
    public var image: FileInput

    /// The maximum number of faces processed. When set to 1, only the largest face in the image is detected. A smaller value leads to faster processing speed.
    public var maxFaceNum: Int?

    /// Whether to return attributes such as age, gender, mood, etc. AttributesInfo is returned for up to 5 faces with the largest area, and AttributesInfo for more than 5 faces (the 6th and later faces) are not referenced.
    public var faceAttributesType: String?

    /// Whether to enable image rotation recognition support. When the face in the picture is rotated and there is no exif information in the picture, if you don't turn on the picture rotation recognition support, you can't detect and recognize the face in the picture correctly. If you are sure that the picture contains exif information or you are sure that the face in the input picture will not be rotated, please do not turn on this parameter. If this parameter is turned on, the overall time required may increase by hundreds of milliseconds. 0: Close. 1: Open.
    public var needRotateDetection: Int?

    public init(
        image: FileInput,
        maxFaceNum: Int? = nil,
        faceAttributesType: String? = nil,
        needRotateDetection: Int? = nil
    ) {
        self.image = image
        self.maxFaceNum = maxFaceNum
        self.faceAttributesType = faceAttributesType
        self.needRotateDetection = needRotateDetection
    }
}

extension PortraitFaceAnalyzerParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = maxFaceNum { fields["max_face_num"] = .integer(value) }
        if let value = faceAttributesType { fields["face_attributes_type"] = .string(value) }
        if let value = needRotateDetection { fields["need_rotate_detection"] = .integer(value) }
        return fields
    }

}
