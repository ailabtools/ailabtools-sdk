// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Skin Analyze Pro API.
public struct PortraitSkinAnalysisProfessionalParams {
    /// Main Image.
    public var image: FileInput

    /// Side face picture.(Left)
    public var leftSideImage: FileInput?

    /// Side face picture.(Right)
    public var rightSideImage: FileInput?

    /// The type of skin problem detection mapping image to be returned. If the corresponding element parameter is passed in, the interface will return an image of the original size, which you can subsequently overlay with the original image to see the results. Use commas to separate multiple types. More Details
    public var returnMaps: String?

    /// The type of skin problem detection mapping image to be returned. Use commas to separate multiple types. More Details
    public var returnMarks: String?

    /// Customize the color. More Details
    public var roiOutlineColor: String?

    /// The side face information that needs to be returned. Use commas to separate multiple types. More Details
    public var returnSideResults: String?

    public init(
        image: FileInput,
        leftSideImage: FileInput? = nil,
        rightSideImage: FileInput? = nil,
        returnMaps: String? = nil,
        returnMarks: String? = nil,
        roiOutlineColor: String? = nil,
        returnSideResults: String? = nil
    ) {
        self.image = image
        self.leftSideImage = leftSideImage
        self.rightSideImage = rightSideImage
        self.returnMaps = returnMaps
        self.returnMarks = returnMarks
        self.roiOutlineColor = roiOutlineColor
        self.returnSideResults = returnSideResults
    }
}

extension PortraitSkinAnalysisProfessionalParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = leftSideImage { fields["left_side_image"] = .file(value) }
        if let value = rightSideImage { fields["right_side_image"] = .file(value) }
        if let value = returnMaps { fields["return_maps"] = .string(value) }
        if let value = returnMarks { fields["return_marks"] = .string(value) }
        if let value = roiOutlineColor { fields["roi_outline_color"] = .string(value) }
        if let value = returnSideResults { fields["return_side_results"] = .string(value) }
        return fields
    }

}
