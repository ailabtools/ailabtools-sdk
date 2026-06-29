// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Object Replacer API.
public struct ImageAiObjectReplacerParams {
    /// Original image.
    public var image: FileInput

    /// Mask image.
    public var mask: FileInput

    /// Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process.
    public var customPrompt: String?

    /// Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time.
    public var steps: Int?

    /// The degree to which the text description influences the output.
    public var scale: Double?

    /// Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent.
    public var seed: Int?

    public init(
        image: FileInput,
        mask: FileInput,
        customPrompt: String? = nil,
        steps: Int? = nil,
        scale: Double? = nil,
        seed: Int? = nil
    ) {
        self.image = image
        self.mask = mask
        self.customPrompt = customPrompt
        self.steps = steps
        self.scale = scale
        self.seed = seed
    }
}

extension ImageAiObjectReplacerParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["mask"] = .file(mask)
        if let value = customPrompt { fields["custom_prompt"] = .string(value) }
        if let value = steps { fields["steps"] = .integer(value) }
        if let value = scale { fields["scale"] = .number(value) }
        if let value = seed { fields["seed"] = .integer(value) }
        return fields
    }

}
