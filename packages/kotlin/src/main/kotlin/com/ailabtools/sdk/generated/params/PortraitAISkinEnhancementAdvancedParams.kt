package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for AI Skin Enhancement Advanced API. */
public data class PortraitAISkinEnhancementAdvancedParams(
    /** - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
    public val image: FileInput,
    /** Smart all-in-one skin beautification. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
    public val smartSkin: String? = null,
    /** Acne and blemish removal. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
    public val acneRemoval: String? = null,
    /** Spot and pigmentation correction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
    public val spotCorrection: String? = null,
    /** Skin brightening and tone enhancement. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
    public val skinBrightening: String? = null,
    /** Skin smoothing and refinement. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
    public val skinSmoothing: String? = null,
    /** Pore and oil control. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
    public val poreControl: String? = null,
    /** Wrinkle and fine-line reduction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
    public val wrinkleReduction: String? = null,
    /** Under-eye correction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
    public val underEyeCorrection: String? = null,
    /** Scar and skin damage reduction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
    public val scarReduction: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "smart_skin" to smartSkin,
        "acne_removal" to acneRemoval,
        "spot_correction" to spotCorrection,
        "skin_brightening" to skinBrightening,
        "skin_smoothing" to skinSmoothing,
        "pore_control" to poreControl,
        "wrinkle_reduction" to wrinkleReduction,
        "under_eye_correction" to underEyeCorrection,
        "scar_reduction" to scarReduction,
    )
}
