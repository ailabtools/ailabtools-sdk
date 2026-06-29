package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Head Extraction API. */
public data class CutoutAvatarExtractionParams(
    /** image */
    public val image: FileInput,
    /** Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. */
    public val returnForm: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "return_form" to returnForm,
    )
}
