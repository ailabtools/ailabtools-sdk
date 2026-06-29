package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Hairstyle Changer Pro API. */
public data class PortraitHairstyleEditingProParams(
    /** Task Type. async: Asynchronous tasks. */
    public val taskType: String,
    /** Main image. */
    public val image: FileInput,
    /** Hairstyle. More Details */
    public val hairStyle: String,
    /** Color. More Details */
    public val color: String? = null,
    /** Returns the number of images. */
    public val imageSize: Int? = null,
    /** Masked Image. If left blank, a masked image will be generated automatically. The white portion of the masked image is the editable area, while the black portion remains unchanged. For example, by using the white area of the mask to cover a person's face, the face will remain unaltered, and other parts will be generated automatically. */
    public val mask: FileInput? = null,
    /** Whether to add bangs to the resulting image. This parameter is ineffective when the hairstyle has no bangs or when bangs are mandatory. Parameter Validity Explanation 0: No. 1: Yes. Parameter Effect Comparison */
    public val bangs: Int? = null,
    /** Generation mode. Please enable this parameter based on the original hairstyle. 1: Head-only mode. More suitable for short hair. 2: Full-image generation mode. More suitable for long hair; use this mode when the original image features shoulder-length or longer hair. Parameter Effect Comparison */
    public val mode: Int? = null,
    /** Reference Original Hairstyle. Enabling this parameter will make changes to the hairstyle based on the original hairstyle, resulting in minor alterations. Please do not enable this parameter if changing from short hair to long hair or from long hair to short hair. 0: No. 1: Yes. Parameter Effect Comparison */
    public val reference: Int? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "task_type" to taskType,
        "image" to image,
        "hair_style" to hairStyle,
        "color" to color,
        "image_size" to imageSize,
        "mask" to mask,
        "bangs" to bangs,
        "mode" to mode,
        "reference" to reference,
    )
}
