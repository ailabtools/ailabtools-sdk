// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Face Beauty Advanced API.
public struct PortraitFacialBeautificationAdvancedParams {
    /// image
    public var image: FileInput

    /// Whitening level: 0 means no whitening, 100 represents the highest level.
    public var whitening: Int?

    /// Skin smoothing level: 0 means no skin smoothing, 100 represents the highest level.
    public var smoothing: Int?

    /// Face slimming level: 0 means no face slimming, 100 represents the highest level.
    public var faceLifting: Int?

    /// Eye enlargement level: 0 means no eye enlargement, 100 represents the highest level.
    public var eyeEnlarging: Int?

    public init(
        image: FileInput,
        whitening: Int? = nil,
        smoothing: Int? = nil,
        faceLifting: Int? = nil,
        eyeEnlarging: Int? = nil
    ) {
        self.image = image
        self.whitening = whitening
        self.smoothing = smoothing
        self.faceLifting = faceLifting
        self.eyeEnlarging = eyeEnlarging
    }
}

extension PortraitFacialBeautificationAdvancedParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = whitening { fields["whitening"] = .integer(value) }
        if let value = smoothing { fields["smoothing"] = .integer(value) }
        if let value = faceLifting { fields["face_lifting"] = .integer(value) }
        if let value = eyeEnlarging { fields["eye_enlarging"] = .integer(value) }
        return fields
    }

}
