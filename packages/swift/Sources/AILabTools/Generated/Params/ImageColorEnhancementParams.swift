// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Image Color Enhancement API.
public struct ImageColorEnhancementParams {
    /// image
    public var image: FileInput

    /// The format of the output image.
    public var outputFormat: String

    /// Color mixing mode. LogC: Suitable for gray film (low contrast raw map) input, adjust the image color perception substantially to restore the color texture of the SDR domain. Rec709: Suitable for images taken under general conditions, appropriate to enhance the image brightness, saturation, etc., the adjustment range is more conservative. ln17_256: Suitable for images taken under general conditions, drastically adjusts image brightness, saturation, contrast, and improves color quality.
    public var mode: String

    public init(
        image: FileInput,
        outputFormat: String,
        mode: String
    ) {
        self.image = image
        self.outputFormat = outputFormat
        self.mode = mode
    }
}

extension ImageColorEnhancementParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["output_format"] = .string(outputFormat)
        fields["mode"] = .string(mode)
        return fields
    }

    func validate() throws {
        if outputFormat.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: outputFormat") }
        if mode.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: mode") }
    }
}
