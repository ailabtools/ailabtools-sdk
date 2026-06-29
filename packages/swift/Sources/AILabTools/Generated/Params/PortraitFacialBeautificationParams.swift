// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Face Beauty API.
public struct PortraitFacialBeautificationParams {
    /// image
    public var image: FileInput

    /// Sharpness level. A higher value indicates a greater degree of sharpness.
    public var sharp: Double

    /// Smoothness level. A higher value results in a smoother appearance.
    public var smooth: Double

    /// Whitening level. A higher value leads to lighter skin.
    public var white: Double

    public init(
        image: FileInput,
        sharp: Double,
        smooth: Double,
        white: Double
    ) {
        self.image = image
        self.sharp = sharp
        self.smooth = smooth
        self.white = white
    }
}

extension PortraitFacialBeautificationParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        fields["sharp"] = .number(sharp)
        fields["smooth"] = .number(smooth)
        fields["white"] = .number(white)
        return fields
    }

}
