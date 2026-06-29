// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Hairstyle Changer Pro API.
public struct PortraitHairstyleEditingProParams {
    /// Task Type. async: Asynchronous tasks.
    public var taskType: String

    /// Main image.
    public var image: FileInput

    /// Hairstyle. More Details
    public var hairStyle: String

    /// Color. More Details
    public var color: String?

    /// Returns the number of images.
    public var imageSize: Int?

    /// Masked Image. If left blank, a masked image will be generated automatically. The white portion of the masked image is the editable area, while the black portion remains unchanged. For example, by using the white area of the mask to cover a person's face, the face will remain unaltered, and other parts will be generated automatically.
    public var mask: FileInput?

    /// Whether to add bangs to the resulting image. This parameter is ineffective when the hairstyle has no bangs or when bangs are mandatory. Parameter Validity Explanation 0: No. 1: Yes. Parameter Effect Comparison
    public var bangs: Int?

    /// Generation mode. Please enable this parameter based on the original hairstyle. 1: Head-only mode. More suitable for short hair. 2: Full-image generation mode. More suitable for long hair; use this mode when the original image features shoulder-length or longer hair. Parameter Effect Comparison
    public var mode: Int?

    /// Reference Original Hairstyle. Enabling this parameter will make changes to the hairstyle based on the original hairstyle, resulting in minor alterations. Please do not enable this parameter if changing from short hair to long hair or from long hair to short hair. 0: No. 1: Yes. Parameter Effect Comparison
    public var reference: Int?

    public init(
        taskType: String,
        image: FileInput,
        hairStyle: String,
        color: String? = nil,
        imageSize: Int? = nil,
        mask: FileInput? = nil,
        bangs: Int? = nil,
        mode: Int? = nil,
        reference: Int? = nil
    ) {
        self.taskType = taskType
        self.image = image
        self.hairStyle = hairStyle
        self.color = color
        self.imageSize = imageSize
        self.mask = mask
        self.bangs = bangs
        self.mode = mode
        self.reference = reference
    }
}

extension PortraitHairstyleEditingProParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["task_type"] = .string(taskType)
        fields["image"] = .file(image)
        fields["hair_style"] = .string(hairStyle)
        if let value = color { fields["color"] = .string(value) }
        if let value = imageSize { fields["image_size"] = .integer(value) }
        if let value = mask { fields["mask"] = .file(value) }
        if let value = bangs { fields["bangs"] = .integer(value) }
        if let value = mode { fields["mode"] = .integer(value) }
        if let value = reference { fields["reference"] = .integer(value) }
        return fields
    }

    func validate() throws {
        if taskType.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: taskType") }
        if hairStyle.isEmpty { throw AILabToolsError.invalidParameter("Missing required parameter: hairStyle") }
    }
}
