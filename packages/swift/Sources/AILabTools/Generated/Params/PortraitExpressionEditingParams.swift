// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Change Facial Expressions API.
public struct PortraitExpressionEditingParams {
    /// image_target
    public var imageTarget: FileInput

    /// Expression type. 0: Big laugh. 1: Pouting. 2: Feel sad. 3: Smile. 100: Opening eyes.
    public var serviceChoice: Int

    public init(
        imageTarget: FileInput,
        serviceChoice: Int
    ) {
        self.imageTarget = imageTarget
        self.serviceChoice = serviceChoice
    }
}

extension PortraitExpressionEditingParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image_target"] = .file(imageTarget)
        fields["service_choice"] = .integer(serviceChoice)
        return fields
    }

}
