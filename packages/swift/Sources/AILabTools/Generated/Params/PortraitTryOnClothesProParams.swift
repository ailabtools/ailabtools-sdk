// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Try on Clothes Pro API.
public struct PortraitTryOnClothesProParams {
    /// Task Type. async: Asynchronous tasks.
    public var taskType: String

    /// Portrait Image.
    public var personImage: FileInput

    /// Upper Body Clothing Image.
    public var topGarment: FileInput

    /// Lower Body Clothing Image. If no lower body clothing image is provided, the lower body clothing effect will be randomly generated. If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty.
    public var bottomGarment: FileInput?

    /// Output Image Resolution. If you need to call **Try on Clothes Refiner** in the future, select -1. -1: Original image resolution. 1024: 576x1024px. 1280: 720x1280px.
    public var resolution: Int?

    /// Whether to Keep the Model’s Face. If you need to call **Try on Clothes Refiner** in the future, select true. true: Keep the model’s original face. false: Regenerate the model’s face.
    public var restoreFace: Bool?

    public init(
        taskType: String,
        personImage: FileInput,
        topGarment: FileInput,
        bottomGarment: FileInput? = nil,
        resolution: Int? = nil,
        restoreFace: Bool? = nil
    ) {
        self.taskType = taskType
        self.personImage = personImage
        self.topGarment = topGarment
        self.bottomGarment = bottomGarment
        self.resolution = resolution
        self.restoreFace = restoreFace
    }
}

extension PortraitTryOnClothesProParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["task_type"] = .string(taskType)
        fields["person_image"] = .file(personImage)
        fields["top_garment"] = .file(topGarment)
        if let value = bottomGarment { fields["bottom_garment"] = .file(value) }
        if let value = resolution { fields["resolution"] = .integer(value) }
        if let value = restoreFace { fields["restore_face"] = .boolean(value) }
        return fields
    }

    func validate() throws {
        if taskType.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: taskType") }
    }
}
