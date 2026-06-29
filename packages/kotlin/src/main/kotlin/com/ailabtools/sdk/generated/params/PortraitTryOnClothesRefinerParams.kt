package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Try on Clothes Refiner API. */
public data class PortraitTryOnClothesRefinerParams(
    /** Task Type. async: Asynchronous tasks. */
    public val taskType: String,
    /** Model image for calling the Try on Clothes API. */
    public val personImage: FileInput,
    /** Top clothing image for calling the Try on Clothes API. */
    public val topGarment: FileInput,
    /** Result image obtained from calling the Try on Clothes API. */
    public val coarseImage: FileInput,
    /** Gender of the person_image. woman: Female. man: Male. */
    public val gender: String,
    /** Bottom clothing image for calling the Try on Clothes API. */
    public val bottomGarment: FileInput? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "task_type" to taskType,
        "person_image" to personImage,
        "top_garment" to topGarment,
        "coarse_image" to coarseImage,
        "gender" to gender,
        "bottom_garment" to bottomGarment,
    )
}
