package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Image Invisible Picture Watermark API. */
public data class ImageInvisibleImageWatermarkParams(
    /** Specifies the calling function. encode_pic: Add image watermark using the old model. encode_pic_plus: Add image watermark with new version model 1. encode_pic_bold: Add image watermark with new version model 2. decode_pic: Use the old model to decode the image watermark in the image. decode_pic_plus: Use the new version Model 1 to decode the image watermark in the image. decode_pic_bold: Use the new version Model 2 to decode the image watermark in the image. */
    public val functionType: String,
    /** Original image. */
    public val originImage: FileInput? = null,
    /** Watermark image. */
    public val logo: FileInput? = null,
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
        "logo" to logo,
        "watermark_image" to watermarkImage,
        "output_file_type" to outputFileType,
        "quality_factor" to qualityFactor,
    )
}
