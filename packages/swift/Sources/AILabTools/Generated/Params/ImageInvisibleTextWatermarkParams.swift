// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Image Invisible Text Watermark API.
public struct ImageInvisibleTextWatermarkParams {
    /// Specifies the calling function. encode_text: Add text watermark using the old version model. encode_text_plus: Add text watermark using the new version model 1. encode_text_bold: Add text watermark using the new version model 2. decode_text: Use the old model to decode the text watermark in the image. decode_text_plus: Use the new version of Model 1 to decode text watermarks in images. decode_text_bold: Use the new version Model 2 to decode the image watermark in the image.
    public var functionType: String

    /// Original image.
    public var originImage: FileInput?

    /// Watermark text.
    public var text: String?

    /// Composite image with watermark.
    public var watermarkImage: FileInput?

    /// Output format.
    public var outputFileType: String?

    /// Quality factor for jpg output.
    public var qualityFactor: Int?

    public init(
        functionType: String,
        originImage: FileInput? = nil,
        text: String? = nil,
        watermarkImage: FileInput? = nil,
        outputFileType: String? = nil,
        qualityFactor: Int? = nil
    ) {
        self.functionType = functionType
        self.originImage = originImage
        self.text = text
        self.watermarkImage = watermarkImage
        self.outputFileType = outputFileType
        self.qualityFactor = qualityFactor
    }
}

extension ImageInvisibleTextWatermarkParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["function_type"] = .string(functionType)
        if let value = originImage { fields["origin_image"] = .file(value) }
        if let value = text { fields["text"] = .string(value) }
        if let value = watermarkImage { fields["watermark_image"] = .file(value) }
        if let value = outputFileType { fields["output_file_type"] = .string(value) }
        if let value = qualityFactor { fields["quality_factor"] = .integer(value) }
        return fields
    }

    func validate() throws {
        if functionType.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: functionType") }
    }
}
