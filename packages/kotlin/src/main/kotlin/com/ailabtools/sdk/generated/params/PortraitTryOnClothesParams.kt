package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Try on Clothes API. */
public data class PortraitTryOnClothesParams(
    /** Task Type. async: Asynchronous tasks. */
    public val taskType: String,
    /** Portrait image. */
    public val personImage: FileInput,
    /** Clothing image. */
    public val clothesImage: FileInput,
    /** Clothing Types. upper_body: Upper body clothing. lower_body: Lower body clothing. full_body: Full body clothing. */
    public val clothesType: String,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "task_type" to taskType,
        "person_image" to personImage,
        "clothes_image" to clothesImage,
        "clothes_type" to clothesType,
    )
}
