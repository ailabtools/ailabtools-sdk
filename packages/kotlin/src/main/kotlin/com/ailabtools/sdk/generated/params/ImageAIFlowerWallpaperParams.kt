package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Flower Wallpaper API. */
public data class ImageAIFlowerWallpaperParams(
    /** User name to display in the wallpaper (English only). Default: AUTO. */
    public val name: String? = null,
    /** Flower elements and bouquet composition description (English only). Default: AUTO. */
    public val flowerElements: String? = null,
    /** Artwork style for the generated wallpaper (English only). Default: soft watercolor floral illustration. */
    public val style: String? = null,
    /** Background style or color theme for the wallpaper (English only). Default: pastel gradient background. */
    public val background: String? = null,
    /** Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. */
    public val aspectRatio: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "name" to name,
        "flower_elements" to flowerElements,
        "style" to style,
        "background" to background,
        "aspect_ratio" to aspectRatio,
    )
}
