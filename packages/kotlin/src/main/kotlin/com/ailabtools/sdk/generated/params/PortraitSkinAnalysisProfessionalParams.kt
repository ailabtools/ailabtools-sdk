package com.ailabtools.sdk.generated.params

import com.ailabtools.sdk.FileInput
import com.ailabtools.sdk.RequestParams

/** Parameters for Skin Analyze Pro API. */
public data class PortraitSkinAnalysisProfessionalParams(
    /** Main Image. */
    public val image: FileInput,
    /** Side face picture.(Left) */
    public val leftSideImage: FileInput? = null,
    /** Side face picture.(Right) */
    public val rightSideImage: FileInput? = null,
    /** The type of skin problem detection mapping image to be returned. If the corresponding element parameter is passed in, the interface will return an image of the original size, which you can subsequently overlay with the original image to see the results. Use commas to separate multiple types. More Details */
    public val returnMaps: String? = null,
    /** The type of skin problem detection mapping image to be returned. Use commas to separate multiple types. More Details */
    public val returnMarks: String? = null,
    /** Customize the color. More Details */
    public val roiOutlineColor: String? = null,
    /** The side face information that needs to be returned. Use commas to separate multiple types. More Details */
    public val returnSideResults: String? = null,
) : RequestParams {
    override fun queryFields(): Map<String, Any?> = emptyMap()

    override fun bodyFields(): Map<String, Any?> = mapOf(
        "image" to image,
        "left_side_image" to leftSideImage,
        "right_side_image" to rightSideImage,
        "return_maps" to returnMaps,
        "return_marks" to returnMarks,
        "roi_outline_color" to roiOutlineColor,
        "return_side_results" to returnSideResults,
    )
}
