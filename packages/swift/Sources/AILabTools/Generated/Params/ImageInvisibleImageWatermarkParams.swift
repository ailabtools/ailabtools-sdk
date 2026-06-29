// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Image Invisible Picture Watermark API.
public struct ImageInvisibleImageWatermarkParams {
    /// Specifies the calling function. encode_pic: Add image watermark using the old model. encode_pic_plus: Add image watermark with new version model 1. encode_pic_bold: Add image watermark with new version model 2. decode_pic: Use the old model to decode the image watermark in the image. decode_pic_plus: Use the new version Model 1 to decode the image watermark in the image. decode_pic_bold: Use the new version Model 2 to decode the image watermark in the image.
    public var functionType: String

    /// Original image.
    public var originImage: FileInput?

    /// Watermark image.
    public var logo: FileInput?

    /// Composite image with watermark.
    public var watermarkImage: FileInput?

    /// Output format.
    public var outputFileType: String?

    /// Quality factor for jpg output.
    public var qualityFactor: Int?

    public init(
        functionType: String,
        originImage: FileInput? = nil,
        logo: FileInput? = nil,
        watermarkImage: FileInput? = nil,
        outputFileType: String? = nil,
        qualityFactor: Int? = nil
    ) {
        self.functionType = functionType
        self.originImage = originImage
        self.logo = logo
        self.watermarkImage = watermarkImage
        self.outputFileType = outputFileType
        self.qualityFactor = qualityFactor
    }
}

extension ImageInvisibleImageWatermarkParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["function_type"] = .string(functionType)
        if let value = originImage { fields["origin_image"] = .file(value) }
        if let value = logo { fields["logo"] = .file(value) }
        if let value = watermarkImage { fields["watermark_image"] = .file(value) }
        if let value = outputFileType { fields["output_file_type"] = .string(value) }
        if let value = qualityFactor { fields["quality_factor"] = .integer(value) }
        return fields
    }

    func validate() throws {
        if functionType.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: functionType") }
    }
}
