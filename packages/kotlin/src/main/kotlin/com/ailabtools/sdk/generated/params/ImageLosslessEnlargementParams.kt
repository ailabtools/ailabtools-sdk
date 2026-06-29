package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Image Upscaler API. */
public data class ImageLosslessEnlargementParams(
    /** image */
    public val image: FileInput,
    /** Magnification. */
    public val upscaleFactor: Int? = null,
    /** Image output mode. base: Normal mode, i.e. stable super-resolution effect. enhancement: Enhancement mode, which has a more prominent enhancement effect than the normal mode, further improving the clarity and sharpness of the output image. */
    public val mode: String? = null,
    /** Output image format. **Note:** If the input image is in RGBA format, the output will be forced to png to preserve both RGBA format and alpha channel accuracy. If the output image resolution exceeds 3840x2160, the output format will be automatically set to jpg. */
    public val outputFormat: String? = null,
    /** Quality factor of the output image, where a higher value corresponds to higher quality. Only applicable when output_format=jpg. */
    public val outputQuality: Int? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "upscale_factor" to upscaleFactor,
        "mode" to mode,
        "output_format" to outputFormat,
        "output_quality" to outputQuality,
    )
}
