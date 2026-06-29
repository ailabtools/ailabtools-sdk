package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Image Extender API. */
public data class ImageAiImageExtenderParams(
    /** Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process. */
    public val customPrompt: String? = null,
    /** Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time. */
    public val steps: Int? = null,
    /** The smaller the value, the closer it is to the original image. */
    public val strength: Double? = null,
    /** The degree to which the text description influences the output. */
    public val scale: Double? = null,
    /** Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent. */
    public val seed: Int? = null,
    /** Maximum output height. Resized to the specified dimensions as a fallback after the image expansion process. */
    public val maxHeight: Int? = null,
    /** Maximum output width. Resized to the specified dimensions as a fallback after the image expansion process. */
    public val maxWidth: Int? = null,
    /** Original image. */
    public val image: FileInput,
    /** Upward expansion ratio. */
    public val top: Double? = null,
    /** Downward expansion ratio. */
    public val bottom: Double? = null,
    /** Leftward expansion ratio. */
    public val left: Double? = null,
    /** Rightward expansion ratio. */
    public val right: Double? = null,
    /** Mask image. */
    public val mask: FileInput? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "custom_prompt" to customPrompt,
        "steps" to steps,
        "strength" to strength,
        "scale" to scale,
        "seed" to seed,
        "max_height" to maxHeight,
        "max_width" to maxWidth,
        "image" to image,
        "top" to top,
        "bottom" to bottom,
        "left" to left,
        "right" to right,
        "mask" to mask,
    )
}
