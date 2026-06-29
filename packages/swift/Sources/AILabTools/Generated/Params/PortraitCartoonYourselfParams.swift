// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Cartoon Yourself API.
public struct PortraitCartoonYourselfParams {
    /// image
    public var image: FileInput

    /// Cartoon effect. pixar: Pixar pixar_plus: Pixar Pro 3d_cartoon: 3D cartoon angel: Angel angel_plus: Angel Pro demon: Demon ukiyoe_cartoon: Ukiyo-e amcartoon: American Manga western: Western avatar: Avatar jpcartoon: Japanese Manga (I) jpcartoon_head: Japanese Manga (portrait) hkcartoon: China Comics classic_cartoon: Retro Cartoon tccartoon: Moe Manga anime: Japanese Manga (II) handdrawn: hand-painted sketch: Pencil drawing (I) artstyle: Artistic effects head: Pencil drawing (head) full: Pencil drawing (II) 3d_game: 3D game effects
    public var type: String

    public init(
        image: FileInput,
        type: String
    ) {
        self.image = image
        self.type = type
    }
}

extension PortraitCartoonYourselfParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["type"] = .string(type)
        return fields
    }

    func validate() throws {
        if type.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: type") }
    }
}
