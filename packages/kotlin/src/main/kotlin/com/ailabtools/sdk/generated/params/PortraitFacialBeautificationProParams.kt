package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Face Beauty Pro API. */
public data class PortraitFacialBeautificationProParams(
    /** image */
    public val image: FileInput,
    /** Whitening Degree. 0 means no whitening effect, 100 represents the highest degree. */
    public val whitening: Int? = null,
    /** Smoothing Degree. 0 means no smoothing effect, 100 represents the highest degree. */
    public val smoothing: Int? = null,
    /** Face Slimming Degree. 0 means no face slimming effect, 100 represents the highest degree. */
    public val thinface: Int? = null,
    /** Small Face Degree. 0 means no small face effect, 100 represents the highest degree. */
    public val shrinkFace: Int? = null,
    /** Big Eyes Degree. 0 means no big eyes effect, 100 represents the highest degree. */
    public val enlargeEye: Int? = null,
    /** Eyebrow Removal Degree. 0 means no eyebrow removal effect, 100 represents the highest degree. */
    public val removeEyebrow: Int? = null,
    /** Filter Effects. 1: Black and White. 2: Calm. 3: Sunny Day. 4: Journey. 5: Beautify Skin. 6: Hong Kong Style. 7: Aesthetic. 8: Lovely. 9: New York. 10: Sakura. 11: Seventeen. 12: Soft Light. 13: Afternoon Tea. 14: Brighten Skin. 15: Chaplin. 16: Floral. 17: Memories. 18: Ice Beauty. 19: Paris. 20: Time. 21: LOMO. 22: Old Times. 23: Early Spring. 24: Story. 25: Abao Color. 26: Fill Light. 27: Warm. 28: Gorgeous. 29: Lavender. 30: Chanel. 31: Prague. 32: Old Dreams. 33: Peach Blossom. 34: Pink. 35: Misty Rain. */
    public val filterType: Int? = null,
    /** Task Type. sync: Synchronous tasks. */
    public val taskType: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "whitening" to whitening,
        "smoothing" to smoothing,
        "thinface" to thinface,
        "shrink_face" to shrinkFace,
        "enlarge_eye" to enlargeEye,
        "remove_eyebrow" to removeEyebrow,
        "filter_type" to filterType,
        "task_type" to taskType,
    )
}
