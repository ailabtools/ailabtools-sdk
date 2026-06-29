package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Smart Beauty API. */
public data class PortraitIntelligentBeautificationParams(
    /** image_target */
    public val imageTarget: FileInput,
    /** Multiple-face beauty strategy. When set to 1, beauty enhancement is applied to all faces (it is recommended that the number of faces in the image be less than 18, as too many faces may lead to instability). When set to any other value or not specified, only the largest face is processed. */
    public val multiFace: String? = null,
    /** Beauty level. */
    public val beautyLevel: Double? = null,
    /** Task Type. sync: Synchronous tasks. */
    public val taskType: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image_target" to imageTarget,
        "multi_face" to multiFace,
        "beauty_level" to beautyLevel,
        "task_type" to taskType,
    )
}
