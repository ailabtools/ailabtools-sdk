// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Image Extender API.
public struct ImageAiImageExtenderParams {
    /// Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process.
    public var customPrompt: String?

    /// Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time.
    public var steps: Int?

    /// The smaller the value, the closer it is to the original image.
    public var strength: Double?

    /// The degree to which the text description influences the output.
    public var scale: Double?

    /// Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent.
    public var seed: Int?

    /// Maximum output height. Resized to the specified dimensions as a fallback after the image expansion process.
    public var maxHeight: Int?

    /// Maximum output width. Resized to the specified dimensions as a fallback after the image expansion process.
    public var maxWidth: Int?

    /// Original image.
    public var image: FileInput

    /// Upward expansion ratio.
    public var top: Double?

    /// Downward expansion ratio.
    public var bottom: Double?

    /// Leftward expansion ratio.
    public var left: Double?

    /// Rightward expansion ratio.
    public var right: Double?

    /// Mask image.
    public var mask: FileInput?

    public init(
        customPrompt: String? = nil,
        steps: Int? = nil,
        strength: Double? = nil,
        scale: Double? = nil,
        seed: Int? = nil,
        maxHeight: Int? = nil,
        maxWidth: Int? = nil,
        image: FileInput,
        top: Double? = nil,
        bottom: Double? = nil,
        left: Double? = nil,
        right: Double? = nil,
        mask: FileInput? = nil
    ) {
        self.customPrompt = customPrompt
        self.steps = steps
        self.strength = strength
        self.scale = scale
        self.seed = seed
        self.maxHeight = maxHeight
        self.maxWidth = maxWidth
        self.image = image
        self.top = top
        self.bottom = bottom
        self.left = left
        self.right = right
        self.mask = mask
    }
}

extension ImageAiImageExtenderParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        if let value = customPrompt { fields["custom_prompt"] = .string(value) }
        if let value = steps { fields["steps"] = .integer(value) }
        if let value = strength { fields["strength"] = .number(value) }
        if let value = scale { fields["scale"] = .number(value) }
        if let value = seed { fields["seed"] = .integer(value) }
        if let value = maxHeight { fields["max_height"] = .integer(value) }
        if let value = maxWidth { fields["max_width"] = .integer(value) }
        fields["image"] = .file(image)
        if let value = top { fields["top"] = .number(value) }
        if let value = bottom { fields["bottom"] = .number(value) }
        if let value = left { fields["left"] = .number(value) }
        if let value = right { fields["right"] = .number(value) }
        if let value = mask { fields["mask"] = .file(value) }
        return fields
    }

}
