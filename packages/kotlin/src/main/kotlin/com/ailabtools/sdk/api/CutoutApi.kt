package com.ailabtools.sdk.api

import com.ailabtools.sdk.Requester
import com.ailabtools.sdk.generated.params.CutoutClothingBackgroundRemovalParams
import com.ailabtools.sdk.generated.response.CutoutClothingBackgroundRemovalResponse
import com.ailabtools.sdk.generated.params.CutoutProductBackgroundRemovalParams
import com.ailabtools.sdk.generated.response.CutoutProductBackgroundRemovalResponse
import com.ailabtools.sdk.generated.params.CutoutFoodBackgroundRemovalParams
import com.ailabtools.sdk.generated.response.CutoutFoodBackgroundRemovalResponse
import com.ailabtools.sdk.generated.params.CutoutUniversalBackgroundRemovalParams
import com.ailabtools.sdk.generated.response.CutoutUniversalBackgroundRemovalResponse
import com.ailabtools.sdk.generated.params.CutoutAvatarExtractionParams
import com.ailabtools.sdk.generated.response.CutoutAvatarExtractionResponse
import com.ailabtools.sdk.generated.params.CutoutHairExtractionParams
import com.ailabtools.sdk.generated.response.CutoutHairExtractionResponse
import com.ailabtools.sdk.generated.params.CutoutHumanBackgroundRemovalParams
import com.ailabtools.sdk.generated.response.CutoutHumanBackgroundRemovalResponse
import com.ailabtools.sdk.generated.params.CutoutHDUniversalBackgroundRemovalParams
import com.ailabtools.sdk.generated.response.CutoutHDUniversalBackgroundRemovalResponse
import com.ailabtools.sdk.generated.params.CutoutHdHumanBodyBackgroundRemovalParams
import com.ailabtools.sdk.generated.response.CutoutHdHumanBodyBackgroundRemovalResponse

/** Cutout API operations. */
public class CutoutApi internal constructor(private val requester: Requester) {
    /** Calls [Costume Background Removal API](https://www.ailabtools.com/docs/ai-cutout/general/apparel-background-removal/api). */
    public suspend fun cutoutClothingBackgroundRemoval(parameters: CutoutClothingBackgroundRemovalParams): CutoutClothingBackgroundRemovalResponse =
        requester.request("POST", "/api/cutout/general/apparel-background-removal", parameters, CutoutClothingBackgroundRemovalResponse.serializer())

    /** Calls [Product Background Removal API](https://www.ailabtools.com/docs/ai-cutout/general/commodity-background-removal/api). */
    public suspend fun cutoutProductBackgroundRemoval(parameters: CutoutProductBackgroundRemovalParams): CutoutProductBackgroundRemovalResponse =
        requester.request("POST", "/api/cutout/general/commodity-background-removal", parameters, CutoutProductBackgroundRemovalResponse.serializer())

    /** Calls [Food Background Removal API](https://www.ailabtools.com/docs/ai-cutout/general/food-background-removal/api). */
    public suspend fun cutoutFoodBackgroundRemoval(parameters: CutoutFoodBackgroundRemovalParams): CutoutFoodBackgroundRemovalResponse =
        requester.request("POST", "/api/cutout/general/food-background-removal", parameters, CutoutFoodBackgroundRemovalResponse.serializer())

    /** Calls [Universal Background Removal API](https://www.ailabtools.com/docs/ai-cutout/general/universal-background-removal/api). */
    public suspend fun cutoutUniversalBackgroundRemoval(parameters: CutoutUniversalBackgroundRemovalParams): CutoutUniversalBackgroundRemovalResponse =
        requester.request("POST", "/api/cutout/general/universal-background-removal", parameters, CutoutUniversalBackgroundRemovalResponse.serializer())

    /** Calls [Head Extraction API](https://www.ailabtools.com/docs/ai-cutout/portrait/avatar-extraction/api). */
    public suspend fun cutoutAvatarExtraction(parameters: CutoutAvatarExtractionParams): CutoutAvatarExtractionResponse =
        requester.request("POST", "/api/cutout/portrait/avatar-extraction", parameters, CutoutAvatarExtractionResponse.serializer())

    /** Calls [Hairstyle Extraction API](https://www.ailabtools.com/docs/ai-cutout/portrait/hairstyle-extraction/api). */
    public suspend fun cutoutHairExtraction(parameters: CutoutHairExtractionParams): CutoutHairExtractionResponse =
        requester.request("POST", "/api/cutout/portrait/hairstyle-extraction", parameters, CutoutHairExtractionResponse.serializer())

    /** Calls [Human Background Removal API](https://www.ailabtools.com/docs/ai-cutout/portrait/portrait-background-removal/api). */
    public suspend fun cutoutHumanBackgroundRemoval(parameters: CutoutHumanBackgroundRemovalParams): CutoutHumanBackgroundRemovalResponse =
        requester.request("POST", "/api/cutout/portrait/portrait-background-removal", parameters, CutoutHumanBackgroundRemovalResponse.serializer())

    /** Calls [HD Universal Background Removal API](https://www.ailabtools.com/docs/ai-cutout/general/hd-universal-background-removal/api). */
    public suspend fun cutoutHDUniversalBackgroundRemoval(parameters: CutoutHDUniversalBackgroundRemovalParams): CutoutHDUniversalBackgroundRemovalResponse =
        requester.request("POST", "/api/cutout/general/hd-universal-background-removal", parameters, CutoutHDUniversalBackgroundRemovalResponse.serializer())

    /** Calls [HD Human Background Removal API](https://www.ailabtools.com/docs/ai-cutout/portrait/hd-portrait-background-removal/api). */
    public suspend fun cutoutHdHumanBodyBackgroundRemoval(parameters: CutoutHdHumanBodyBackgroundRemovalParams): CutoutHdHumanBodyBackgroundRemovalResponse =
        requester.request("POST", "/api/cutout/portrait/hd-portrait-background-removal", parameters, CutoutHdHumanBodyBackgroundRemovalResponse.serializer())

}
