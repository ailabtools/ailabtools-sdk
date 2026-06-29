package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Face Beauty API. */
public data class PortraitFacialBeautificationParams(
    /** image */
    public val image: FileInput,
    /** Sharpness level. A higher value indicates a greater degree of sharpness. */
    public val sharp: Double,
    /** Smoothness level. A higher value results in a smoother appearance. */
    public val smooth: Double,
    /** Whitening level. A higher value leads to lighter skin. */
    public val white: Double,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "sharp" to sharp,
        "smooth" to smooth,
        "white" to white,
    )
}
