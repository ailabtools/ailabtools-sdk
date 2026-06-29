package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Try on Clothes Pro API. */
public data class PortraitTryOnClothesProParams(
    /** Task Type. async: Asynchronous tasks. */
    public val taskType: String,
    /** Portrait Image. */
    public val personImage: FileInput,
    /** Upper Body Clothing Image. */
    public val topGarment: FileInput,
    /** Lower Body Clothing Image. If no lower body clothing image is provided, the lower body clothing effect will be randomly generated. If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty. */
    public val bottomGarment: FileInput? = null,
    /** Output Image Resolution. If you need to call **Try on Clothes Refiner** in the future, select -1. -1: Original image resolution. 1024: 576x1024px. 1280: 720x1280px. */
    public val resolution: Int? = null,
    /** Whether to Keep the Model’s Face. If you need to call **Try on Clothes Refiner** in the future, select true. true: Keep the model’s original face. false: Regenerate the model’s face. */
    public val restoreFace: Boolean? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "task_type" to taskType,
        "person_image" to personImage,
        "top_garment" to topGarment,
        "bottom_garment" to bottomGarment,
        "resolution" to resolution,
        "restore_face" to restoreFace,
    )
}
