// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Skin Analyze Advanced API.
public struct PortraitSkinAnalysisAdvancedParams {
    /// image
    public var image: FileInput

    /// Whether to restrict the quality of faces in incoming images. 0: No face quality control is performed, and skin measurement results are returned as long as the face can be detected. 1: Perform face quality control, if the face quality does not pass it will prompt an error.
    public var faceQualityControl: Int?

    /// The confidence level of the area whether to return acne, occlusion, blemishes and moles. 0: No regional confidence is returned. 1: Returns the regional confidence.
    public var returnRectConfidence: Int?

    /// Enter a comma-separated string containing the type of skin chromatography image to be returned. More Details
    public var returnMaps: String?

    public init(
        image: FileInput,
        faceQualityControl: Int? = nil,
        returnRectConfidence: Int? = nil,
        returnMaps: String? = nil
    ) {
        self.image = image
        self.faceQualityControl = faceQualityControl
        self.returnRectConfidence = returnRectConfidence
        self.returnMaps = returnMaps
    }
}

extension PortraitSkinAnalysisAdvancedParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = faceQualityControl { fields["face_quality_control"] = .integer(value) }
        if let value = returnRectConfidence { fields["return_rect_confidence"] = .integer(value) }
        if let value = returnMaps { fields["return_maps"] = .string(value) }
        return fields
    }

}
