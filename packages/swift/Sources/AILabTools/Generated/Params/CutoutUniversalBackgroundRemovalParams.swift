// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Universal Background Removal API.
public struct CutoutUniversalBackgroundRemovalParams {
    /// image
    public var image: FileInput

    /// Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image. crop: Returns the four-channel PNG image after cropping (cropping out the blank areas around the edges).
    public var returnForm: String?

    public init(
        image: FileInput,
        returnForm: String? = nil
    ) {
        self.image = image
        self.returnForm = returnForm
    }
}

extension CutoutUniversalBackgroundRemovalParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = returnForm { fields["return_form"] = .string(value) }
        return fields
    }

}
