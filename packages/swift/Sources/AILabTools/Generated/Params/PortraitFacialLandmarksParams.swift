// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Facial Landmarks API.
public struct PortraitFacialLandmarksParams {
    /// image
    public var image: FileInput

    /// The maximum number of faces to process. The default value is 1 (only the face with the largest area in the image is detected).
    public var maxFaceNum: Int?

    /// Returns more information about the face (by default only face_token, face frame, probability and rotation angle are returned). age: Age information. gender: Gender information. landmark4: 4 feature points. landmark72: 72 feature points. landmark150: 150 feature points. landmark201: 201 feature points.
    public var faceField: String?

    public init(
        image: FileInput,
        maxFaceNum: Int? = nil,
        faceField: String? = nil
    ) {
        self.image = image
        self.maxFaceNum = maxFaceNum
        self.faceField = faceField
    }
}

extension PortraitFacialLandmarksParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = maxFaceNum { fields["max_face_num"] = .integer(value) }
        if let value = faceField { fields["face_field"] = .string(value) }
        return fields
    }

}
