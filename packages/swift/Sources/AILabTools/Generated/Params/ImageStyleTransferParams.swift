// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Photo to Painting API.
public struct ImageStyleTransferParams {
    /// image
    public var image: FileInput

    /// cartoon: Cartoon style. pencil: Pencil style. color_pencil: Color pencil drawing style. warm: The style of colorful sugar cube oil painting. wave: Oil painting style in surfing in Kanagawa. lavender: Lavender oil painting style. mononoke: Strange oil painting style. scream: Scream oil painting style. gothic: Gothic oil painting style.
    public var option: String

    public init(
        image: FileInput,
        option: String
    ) {
        self.image = image
        self.option = option
    }
}

extension ImageStyleTransferParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["option"] = .string(option)
        return fields
    }

    func validate() throws {
        if option.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: option") }
    }
}
