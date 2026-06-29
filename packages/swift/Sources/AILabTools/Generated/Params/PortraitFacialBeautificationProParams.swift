// Generated from packages/spec.json. Do not edit manually.
import Foundation

/// Parameters for Face Beauty Pro API.
public struct PortraitFacialBeautificationProParams {
    /// image
    public var image: FileInput

    /// Whitening Degree. 0 means no whitening effect, 100 represents the highest degree.
    public var whitening: Int?

    /// Smoothing Degree. 0 means no smoothing effect, 100 represents the highest degree.
    public var smoothing: Int?

    /// Face Slimming Degree. 0 means no face slimming effect, 100 represents the highest degree.
    public var thinface: Int?

    /// Small Face Degree. 0 means no small face effect, 100 represents the highest degree.
    public var shrinkFace: Int?

    /// Big Eyes Degree. 0 means no big eyes effect, 100 represents the highest degree.
    public var enlargeEye: Int?

    /// Eyebrow Removal Degree. 0 means no eyebrow removal effect, 100 represents the highest degree.
    public var removeEyebrow: Int?

    /// Filter Effects. 1: Black and White. 2: Calm. 3: Sunny Day. 4: Journey. 5: Beautify Skin. 6: Hong Kong Style. 7: Aesthetic. 8: Lovely. 9: New York. 10: Sakura. 11: Seventeen. 12: Soft Light. 13: Afternoon Tea. 14: Brighten Skin. 15: Chaplin. 16: Floral. 17: Memories. 18: Ice Beauty. 19: Paris. 20: Time. 21: LOMO. 22: Old Times. 23: Early Spring. 24: Story. 25: Abao Color. 26: Fill Light. 27: Warm. 28: Gorgeous. 29: Lavender. 30: Chanel. 31: Prague. 32: Old Dreams. 33: Peach Blossom. 34: Pink. 35: Misty Rain.
    public var filterType: Int?

    /// Task Type. sync: Synchronous tasks.
    public var taskType: String?

    public init(
        image: FileInput,
        whitening: Int? = nil,
        smoothing: Int? = nil,
        thinface: Int? = nil,
        shrinkFace: Int? = nil,
        enlargeEye: Int? = nil,
        removeEyebrow: Int? = nil,
        filterType: Int? = nil,
        taskType: String? = nil
    ) {
        self.image = image
        self.whitening = whitening
        self.smoothing = smoothing
        self.thinface = thinface
        self.shrinkFace = shrinkFace
        self.enlargeEye = enlargeEye
        self.removeEyebrow = removeEyebrow
        self.filterType = filterType
        self.taskType = taskType
    }
}

extension PortraitFacialBeautificationProParams: RequestParameters {
    func queryFields() -> [String: RequestValue] {
        [:]
    }

    func bodyFields() -> [String: RequestValue] {
        var fields: [String: RequestValue] = [:]
        fields["image"] = .file(image)
        if let value = whitening { fields["whitening"] = .integer(value) }
        if let value = smoothing { fields["smoothing"] = .integer(value) }
        if let value = thinface { fields["thinface"] = .integer(value) }
        if let value = shrinkFace { fields["shrink_face"] = .integer(value) }
        if let value = enlargeEye { fields["enlarge_eye"] = .integer(value) }
        if let value = removeEyebrow { fields["remove_eyebrow"] = .integer(value) }
        if let value = filterType { fields["filter_type"] = .integer(value) }
        if let value = taskType { fields["task_type"] = .string(value) }
        return fields
    }

}
