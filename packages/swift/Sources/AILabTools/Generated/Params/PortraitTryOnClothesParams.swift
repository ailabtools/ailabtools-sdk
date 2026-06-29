// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Try on Clothes API.
public struct PortraitTryOnClothesParams {
    /// Task Type. async: Asynchronous tasks.
    public var taskType: String

    /// Portrait image.
    public var personImage: FileInput

    /// Clothing image.
    public var clothesImage: FileInput

    /// Clothing Types. upper_body: Upper body clothing. lower_body: Lower body clothing. full_body: Full body clothing.
    public var clothesType: String

    public init(
        taskType: String,
        personImage: FileInput,
        clothesImage: FileInput,
        clothesType: String
    ) {
        self.taskType = taskType
        self.personImage = personImage
        self.clothesImage = clothesImage
        self.clothesType = clothesType
    }
}

extension PortraitTryOnClothesParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["task_type"] = .string(taskType)
        fields["person_image"] = .file(personImage)
        fields["clothes_image"] = .file(clothesImage)
        fields["clothes_type"] = .string(clothesType)
        return fields
    }

    func validate() throws {
        if taskType.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: taskType") }
        if clothesType.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: clothesType") }
    }
}
