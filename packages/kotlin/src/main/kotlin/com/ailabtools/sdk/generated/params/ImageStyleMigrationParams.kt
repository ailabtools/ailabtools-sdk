package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Style Transfer API. */
public data class ImageStyleMigrationParams(
    /** style image. */
    public val style: FileInput,
    /** Content image. */
    public val major: FileInput,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "style" to style,
        "major" to major,
    )
}
