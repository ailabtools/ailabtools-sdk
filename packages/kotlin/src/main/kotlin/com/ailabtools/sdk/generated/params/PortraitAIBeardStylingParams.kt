package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Beard Styling API. */
public data class PortraitAIBeardStylingParams(
    /** - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val image: FileInput,
    /** Built-in beard preset. Provide this field or `image_template`. If both are provided, `beard` takes precedence. See [Supported beard values](https://www.ailabtools.com/docs/ai-portrait/editing/ai-beard-styling/api#beard). Allowed values: FullBeardClassic, CorporateBeard, Garibaldi, Verdi, FullBeardTapered, VanDyke, Bandholz, VanDykeRefined, Goatee, ExtendedGoatee, Balbo, AnchorBeardClean, DucktailBeardPointed, AnchorBeardFull, DucktailBeardFull, HeavyStubble, ChevronMoustache, HandlebarMoustache, ImperialMoustache, CircleBeard, ChinStrap, MuttonChops, SoulPatch, PetiteGoatee. */
    public val beard: String? = null,
    /** Reference image for beard transfer. Provide this field or `beard`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val imageTemplate: FileInput? = null,
) : RequestParams {
    init {
        require(beard != null || imageTemplate != null) { "At least one of beard, imageTemplate is required" }
    }
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "beard" to beard,
        "image_template" to imageTemplate,
    )
}
