// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Costume Background Removal API.
public struct CutoutClothingBackgroundRemovalParams {
    /// image
    public var image: FileInput

    /// 0
    public var outMode: Int?

    /// Clothing categories. Multiple values can be submitted at once, separated by commas (,). tops: Tops. coat: Coat. skirt: Skirt. pants: Pants. bag: Bag. shoes: Shoes. hat: Hat.
    public var clothClass: String?

    /// Specify the desired image format for the output. whiteBK: Returns an image with a white background. mask: Returns a single-channel mask. If not specified, a four-channel PNG image will be returned.
    public var returnForm: String?

    public init(
        image: FileInput,
        outMode: Int? = nil,
        clothClass: String? = nil,
        returnForm: String? = nil
    ) {
        self.image = image
        self.outMode = outMode
        self.clothClass = clothClass
        self.returnForm = returnForm
    }
}

extension CutoutClothingBackgroundRemovalParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = outMode { fields["out_mode"] = .integer(value) }
        if let value = clothClass { fields["cloth_class"] = .string(value) }
        if let value = returnForm { fields["return_form"] = .string(value) }
        return fields
    }

}
