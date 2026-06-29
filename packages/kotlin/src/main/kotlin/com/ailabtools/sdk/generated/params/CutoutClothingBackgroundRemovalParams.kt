package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Costume Background Removal API. */
public data class CutoutClothingBackgroundRemovalParams(
    /** image */
    public val image: FileInput,
    /** 0 */
    public val outMode: Int? = null,
    /** Clothing categories. Multiple values can be submitted at once, separated by commas (,). tops: Tops. coat: Coat. skirt: Skirt. pants: Pants. bag: Bag. shoes: Shoes. hat: Hat. */
    public val clothClass: String? = null,
    /** Specify the desired image format for the output. whiteBK: Returns an image with a white background. mask: Returns a single-channel mask. If not specified, a four-channel PNG image will be returned. */
    public val returnForm: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "out_mode" to outMode,
        "cloth_class" to clothClass,
        "return_form" to returnForm,
    )
}
