// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Beard Styling API.
public struct PortraitAIBeardStylingParams {
    /// - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var image: FileInput

    /// Built-in beard preset. Provide this field or `image_template`. If both are provided, `beard` takes precedence. See [Supported beard values](https://www.ailabtools.com/docs/ai-portrait/editing/ai-beard-styling/api#beard). Allowed values: FullBeardClassic, CorporateBeard, Garibaldi, Verdi, FullBeardTapered, VanDyke, Bandholz, VanDykeRefined, Goatee, ExtendedGoatee, Balbo, AnchorBeardClean, DucktailBeardPointed, AnchorBeardFull, DucktailBeardFull, HeavyStubble, ChevronMoustache, HandlebarMoustache, ImperialMoustache, CircleBeard, ChinStrap, MuttonChops, SoulPatch, PetiteGoatee.
    public var beard: String?

    /// Reference image for beard transfer. Provide this field or `beard`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px.
    public var imageTemplate: FileInput?

    public init(
        image: FileInput,
        beard: String? = nil,
        imageTemplate: FileInput? = nil
    ) {
        self.image = image
        self.beard = beard
        self.imageTemplate = imageTemplate
    }
}

extension PortraitAIBeardStylingParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = beard { fields["beard"] = .string(value) }
        if let value = imageTemplate { fields["image_template"] = .file(value) }
        return fields
    }

    func validate() throws {
        if beard == nil && imageTemplate == nil { throw AILabToolsError.invalidParameter("At least one of beard, imageTemplate is required") }
    }
}
