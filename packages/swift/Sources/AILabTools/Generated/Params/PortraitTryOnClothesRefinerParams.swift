// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Try on Clothes Refiner API.
public struct PortraitTryOnClothesRefinerParams {
    /// Task Type. async: Asynchronous tasks.
    public var taskType: String

    /// Model image for calling the Try on Clothes API.
    public var personImage: FileInput

    /// Top clothing image for calling the Try on Clothes API.
    public var topGarment: FileInput

    /// Result image obtained from calling the Try on Clothes API.
    public var coarseImage: FileInput

    /// Gender of the person_image. woman: Female. man: Male.
    public var gender: String

    /// Bottom clothing image for calling the Try on Clothes API.
    public var bottomGarment: FileInput?

    public init(
        taskType: String,
        personImage: FileInput,
        topGarment: FileInput,
        coarseImage: FileInput,
        gender: String,
        bottomGarment: FileInput? = nil
    ) {
        self.taskType = taskType
        self.personImage = personImage
        self.topGarment = topGarment
        self.coarseImage = coarseImage
        self.gender = gender
        self.bottomGarment = bottomGarment
    }
}

extension PortraitTryOnClothesRefinerParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["task_type"] = .string(taskType)
        fields["person_image"] = .file(personImage)
        fields["top_garment"] = .file(topGarment)
        fields["coarse_image"] = .file(coarseImage)
        fields["gender"] = .string(gender)
        if let value = bottomGarment { fields["bottom_garment"] = .file(value) }
        return fields
    }

    func validate() throws {
        if taskType.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: taskType") }
        if gender.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: gender") }
    }
}
