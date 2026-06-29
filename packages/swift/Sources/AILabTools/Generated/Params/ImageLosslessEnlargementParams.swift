// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Image Upscaler API.
public struct ImageLosslessEnlargementParams {
    /// image
    public var image: FileInput

    /// Magnification.
    public var upscaleFactor: Int?

    /// Image output mode. base: Normal mode, i.e. stable super-resolution effect. enhancement: Enhancement mode, which has a more prominent enhancement effect than the normal mode, further improving the clarity and sharpness of the output image.
    public var mode: String?

    /// Output image format. **Note:** If the input image is in RGBA format, the output will be forced to png to preserve both RGBA format and alpha channel accuracy. If the output image resolution exceeds 3840x2160, the output format will be automatically set to jpg.
    public var outputFormat: String?

    /// Quality factor of the output image, where a higher value corresponds to higher quality. Only applicable when output_format=jpg.
    public var outputQuality: Int?

    public init(
        image: FileInput,
        upscaleFactor: Int? = nil,
        mode: String? = nil,
        outputFormat: String? = nil,
        outputQuality: Int? = nil
    ) {
        self.image = image
        self.upscaleFactor = upscaleFactor
        self.mode = mode
        self.outputFormat = outputFormat
        self.outputQuality = outputQuality
    }
}

extension ImageLosslessEnlargementParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = upscaleFactor { fields["upscale_factor"] = .integer(value) }
        if let value = mode { fields["mode"] = .string(value) }
        if let value = outputFormat { fields["output_format"] = .string(value) }
        if let value = outputQuality { fields["output_quality"] = .integer(value) }
        return fields
    }

}
