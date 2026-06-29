// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Food Background Removal API.
public struct CutoutFoodBackgroundRemovalParams {
    /// image
    public var image: FileInput

    /// Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. whiteBK: Return to white background image.
    public var returnForm: String?

    public init(
        image: FileInput,
        returnForm: String? = nil
    ) {
        self.image = image
        self.returnForm = returnForm
    }
}

extension CutoutFoodBackgroundRemovalParams: RequestParameters {
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
