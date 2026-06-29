// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for AI Breast Expansion API.
public struct PortraitAIBreastExpansionParams {
    /// Task Type. <li>`async`: Asynchronous tasks.</li>
    public var taskType: String?

    /// person_image
    public var personImage: FileInput

    public init(
        taskType: String? = nil,
        personImage: FileInput
    ) {
        self.taskType = taskType
        self.personImage = personImage
    }
}

extension PortraitAIBreastExpansionParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        if let value = taskType { fields["task_type"] = .string(value) }
        fields["person_image"] = .file(personImage)
        return fields
    }

}
