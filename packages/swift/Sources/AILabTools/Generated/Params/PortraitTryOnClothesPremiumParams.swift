// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Try on Clothes Premium API.
public struct PortraitTryOnClothesPremiumParams {
    /// Task Type. <li>`async`: Asynchronous tasks.</li>
    public var taskType: String

    /// Portrait image.
    public var personImage: FileInput

    /// Upper Body Clothing Image.
    public var topGarment: FileInput

    /// Output Image Resolution. If you need to call **[Try on Clothes Refiner](https://documenter.getpostman.com/view/26387069/2s93JxqgHE#75de8e09-37dd-4b31-b4f8-33a666cebb2a)** in the future, select `-1`. <li>`-1`: Original image resolution.</li> <li>`1024`: 576x1024px.</li> <li>`1280`: 720x1280px.</li>
    public var resolution: Double?

    /// Whether to Keep the Model’s Face. If you need to call **[Try on Clothes Refiner](https://documenter.getpostman.com/view/26387069/2s93JxqgHE#75de8e09-37dd-4b31-b4f8-33a666cebb2a)** in the future, select `true`. <li>`true`: Keep the model’s original face.</li> <li>`false`: Regenerate the model’s face.</li>
    public var restoreFace: Bool?

    /// Lower Body Clothing Image. <li>If no lower body clothing image is provided, the lower body clothing effect will be randomly generated.</li> <li>If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty.</li>
    public var bottomGarment: FileInput?

    public init(
        taskType: String,
        personImage: FileInput,
        topGarment: FileInput,
        resolution: Double? = nil,
        restoreFace: Bool? = nil,
        bottomGarment: FileInput? = nil
    ) {
        self.taskType = taskType
        self.personImage = personImage
        self.topGarment = topGarment
        self.resolution = resolution
        self.restoreFace = restoreFace
        self.bottomGarment = bottomGarment
    }
}

extension PortraitTryOnClothesPremiumParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["task_type"] = .string(taskType)
        fields["person_image"] = .file(personImage)
        fields["top_garment"] = .file(topGarment)
        if let value = resolution { fields["resolution"] = .number(value) }
        if let value = restoreFace { fields["restore_face"] = .boolean(value) }
        if let value = bottomGarment { fields["bottom_garment"] = .file(value) }
        return fields
    }

    func validate() throws {
        if taskType.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: taskType") }
    }
}
