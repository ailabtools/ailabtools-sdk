// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Style Transfer API.
public struct ImageStyleMigrationParams {
    /// style image.
    public var style: FileInput

    /// Content image.
    public var major: FileInput

    public init(
        style: FileInput,
        major: FileInput
    ) {
        self.style = style
        self.major = major
    }
}

extension ImageStyleMigrationParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["style"] = .file(style)
        fields["major"] = .file(major)
        return fields
    }

}
