package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Try on Clothes Premium API. */
public data class PortraitTryOnClothesPremiumParams(
    /** Task Type. <li>`async`: Asynchronous tasks.</li> */
    public val taskType: String,
    /** Portrait image. */
    public val personImage: FileInput,
    /** Upper Body Clothing Image. */
    public val topGarment: FileInput,
    /** Output Image Resolution. If you need to call **[Try on Clothes Refiner](https://documenter.getpostman.com/view/26387069/2s93JxqgHE#75de8e09-37dd-4b31-b4f8-33a666cebb2a)** in the future, select `-1`. <li>`-1`: Original image resolution.</li> <li>`1024`: 576x1024px.</li> <li>`1280`: 720x1280px.</li> */
    public val resolution: Double? = null,
    /** Whether to Keep the Model’s Face. If you need to call **[Try on Clothes Refiner](https://documenter.getpostman.com/view/26387069/2s93JxqgHE#75de8e09-37dd-4b31-b4f8-33a666cebb2a)** in the future, select `true`. <li>`true`: Keep the model’s original face.</li> <li>`false`: Regenerate the model’s face.</li> */
    public val restoreFace: Boolean? = null,
    /** Lower Body Clothing Image. <li>If no lower body clothing image is provided, the lower body clothing effect will be randomly generated.</li> <li>If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty.</li> */
    public val bottomGarment: FileInput? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "task_type" to taskType,
        "person_image" to personImage,
        "top_garment" to topGarment,
        "resolution" to resolution,
        "restore_face" to restoreFace,
        "bottom_garment" to bottomGarment,
    )
}
