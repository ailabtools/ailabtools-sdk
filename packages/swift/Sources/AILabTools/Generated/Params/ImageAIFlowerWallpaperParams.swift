// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Flower Wallpaper API.
public struct ImageAIFlowerWallpaperParams {
    /// User name to display in the wallpaper (English only). Default: AUTO.
    public var name: String?

    /// Flower elements and bouquet composition description (English only). Default: AUTO.
    public var flowerElements: String?

    /// Artwork style for the generated wallpaper (English only). Default: soft watercolor floral illustration.
    public var style: String?

    /// Background style or color theme for the wallpaper (English only). Default: pastel gradient background.
    public var background: String?

    /// Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto.
    public var aspectRatio: String?

    public init(
        name: String? = nil,
        flowerElements: String? = nil,
        style: String? = nil,
        background: String? = nil,
        aspectRatio: String? = nil
    ) {
        self.name = name
        self.flowerElements = flowerElements
        self.style = style
        self.background = background
        self.aspectRatio = aspectRatio
    }
}

extension ImageAIFlowerWallpaperParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        if let value = name { fields["name"] = .string(value) }
        if let value = flowerElements { fields["flower_elements"] = .string(value) }
        if let value = style { fields["style"] = .string(value) }
        if let value = background { fields["background"] = .string(value) }
        if let value = aspectRatio { fields["aspect_ratio"] = .string(value) }
        return fields
    }

}
