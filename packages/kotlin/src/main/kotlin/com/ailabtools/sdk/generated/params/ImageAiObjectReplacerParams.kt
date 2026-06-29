package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Object Replacer API. */
public data class ImageAiObjectReplacerParams(
    /** Original image. */
    public val image: FileInput,
    /** Mask image. */
    public val mask: FileInput,
    /** Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process. */
    public val customPrompt: String? = null,
    /** Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time. */
    public val steps: Int? = null,
    /** The degree to which the text description influences the output. */
    public val scale: Double? = null,
    /** Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent. */
    public val seed: Int? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "mask" to mask,
        "custom_prompt" to customPrompt,
        "steps" to steps,
        "scale" to scale,
        "seed" to seed,
    )
}
