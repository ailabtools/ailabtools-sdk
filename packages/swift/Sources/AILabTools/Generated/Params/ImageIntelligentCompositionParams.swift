// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Intelligent Composition API.
public struct ImageIntelligentCompositionParams {
    /// image
    public var image: FileInput

    /// The number of output boxes.
    public var numBoxes: Int?

    public init(
        image: FileInput,
        numBoxes: Int? = nil
    ) {
        self.image = image
        self.numBoxes = numBoxes
    }
}

extension ImageIntelligentCompositionParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = numBoxes { fields["num_boxes"] = .integer(value) }
        return fields
    }

}
