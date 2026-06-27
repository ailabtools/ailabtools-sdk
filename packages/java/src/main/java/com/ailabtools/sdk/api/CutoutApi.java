package com.ailabtools.sdk.api;

import com.ailabtools.sdk.http.Requester;
import com.ailabtools.sdk.generated.params.CutoutClothingBackgroundRemovalParams;
import com.ailabtools.sdk.generated.response.CutoutClothingBackgroundRemovalResponse;
import com.ailabtools.sdk.generated.params.CutoutProductBackgroundRemovalParams;
import com.ailabtools.sdk.generated.response.CutoutProductBackgroundRemovalResponse;
import com.ailabtools.sdk.generated.params.CutoutFoodBackgroundRemovalParams;
import com.ailabtools.sdk.generated.response.CutoutFoodBackgroundRemovalResponse;
import com.ailabtools.sdk.generated.params.CutoutUniversalBackgroundRemovalParams;
import com.ailabtools.sdk.generated.response.CutoutUniversalBackgroundRemovalResponse;
import com.ailabtools.sdk.generated.params.CutoutAvatarExtractionParams;
import com.ailabtools.sdk.generated.response.CutoutAvatarExtractionResponse;
import com.ailabtools.sdk.generated.params.CutoutHairExtractionParams;
import com.ailabtools.sdk.generated.response.CutoutHairExtractionResponse;
import com.ailabtools.sdk.generated.params.CutoutHumanBackgroundRemovalParams;
import com.ailabtools.sdk.generated.response.CutoutHumanBackgroundRemovalResponse;

/** AILabTools cutout API methods. */
public final class CutoutApi {
    private final Requester requester;

    public CutoutApi(Requester requester) {
        this.requester = requester;
    }

    public CutoutClothingBackgroundRemovalResponse cutoutClothingBackgroundRemoval(CutoutClothingBackgroundRemovalParams params) {
        return requester.request("POST", "/api/cutout/general/apparel-background-removal", params.toMap(), true, CutoutClothingBackgroundRemovalResponse.class);
    }

    public CutoutProductBackgroundRemovalResponse cutoutProductBackgroundRemoval(CutoutProductBackgroundRemovalParams params) {
        return requester.request("POST", "/api/cutout/general/commodity-background-removal", params.toMap(), true, CutoutProductBackgroundRemovalResponse.class);
    }

    public CutoutFoodBackgroundRemovalResponse cutoutFoodBackgroundRemoval(CutoutFoodBackgroundRemovalParams params) {
        return requester.request("POST", "/api/cutout/general/food-background-removal", params.toMap(), true, CutoutFoodBackgroundRemovalResponse.class);
    }

    public CutoutUniversalBackgroundRemovalResponse cutoutUniversalBackgroundRemoval(CutoutUniversalBackgroundRemovalParams params) {
        return requester.request("POST", "/api/cutout/general/universal-background-removal", params.toMap(), true, CutoutUniversalBackgroundRemovalResponse.class);
    }

    public CutoutAvatarExtractionResponse cutoutAvatarExtraction(CutoutAvatarExtractionParams params) {
        return requester.request("POST", "/api/cutout/portrait/avatar-extraction", params.toMap(), true, CutoutAvatarExtractionResponse.class);
    }

    public CutoutHairExtractionResponse cutoutHairExtraction(CutoutHairExtractionParams params) {
        return requester.request("POST", "/api/cutout/portrait/hairstyle-extraction", params.toMap(), true, CutoutHairExtractionResponse.class);
    }

    public CutoutHumanBackgroundRemovalResponse cutoutHumanBackgroundRemoval(CutoutHumanBackgroundRemovalParams params) {
        return requester.request("POST", "/api/cutout/portrait/portrait-background-removal", params.toMap(), true, CutoutHumanBackgroundRemovalResponse.class);
    }

}
