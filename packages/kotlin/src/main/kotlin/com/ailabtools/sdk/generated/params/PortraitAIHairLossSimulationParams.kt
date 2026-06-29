package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Hair Loss Simulation API. */
public data class PortraitAIHairLossSimulationParams(
    /** - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val image: FileInput,
    /** Hair loss level. See [Supported level values](https://www.ailabtools.com/docs/ai-portrait/editing/ai-hair-loss-simulation/api#level). Allowed values: man_1, man_2, man_3, man_4, man_5, man_6, man_7, woman_1, woman_2, woman_3, woman_4, woman_5, woman_6, woman_7. */
    public val level: String,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "level" to level,
    )
}
