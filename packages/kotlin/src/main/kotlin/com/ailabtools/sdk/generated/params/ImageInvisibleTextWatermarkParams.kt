package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Image Invisible Text Watermark API. */
public data class ImageInvisibleTextWatermarkParams(
    /** Specifies the calling function. encode_text: Add text watermark using the old version model. encode_text_plus: Add text watermark using the new version model 1. encode_text_bold: Add text watermark using the new version model 2. decode_text: Use the old model to decode the text watermark in the image. decode_text_plus: Use the new version of Model 1 to decode text watermarks in images. decode_text_bold: Use the new version Model 2 to decode the image watermark in the image. */
    public val functionType: String,
    /** Original image. */
    public val originImage: FileInput? = null,
    /** Watermark text. */
    public val text: String? = null,
    /** Composite image with watermark. */
    public val watermarkImage: FileInput? = null,
    /** Output format. */
    public val outputFileType: String? = null,
    /** Quality factor for jpg output. */
    public val qualityFactor: Int? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "function_type" to functionType,
        "origin_image" to originImage,
        "text" to text,
        "watermark_image" to watermarkImage,
        "output_file_type" to outputFileType,
        "quality_factor" to qualityFactor,
    )
}
