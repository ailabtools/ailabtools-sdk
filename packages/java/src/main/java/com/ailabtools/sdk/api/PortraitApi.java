package com.ailabtools.sdk.api;

import com.ailabtools.sdk.http.Requester;
import com.ailabtools.sdk.generated.params.PortraitFaceAnalyzerParams;
import com.ailabtools.sdk.generated.response.PortraitFaceAnalyzerResponse;
import com.ailabtools.sdk.generated.params.PortraitFaceAnalyzerAdvancedParams;
import com.ailabtools.sdk.generated.response.PortraitFaceAnalyzerAdvancedResponse;
import com.ailabtools.sdk.generated.params.PortraitFacialLandmarksParams;
import com.ailabtools.sdk.generated.response.PortraitFacialLandmarksResponse;
import com.ailabtools.sdk.generated.params.PortraitSkinAnalysisBasicParams;
import com.ailabtools.sdk.generated.response.PortraitSkinAnalysisBasicResponse;
import com.ailabtools.sdk.generated.params.PortraitSkinAnalysisAdvancedParams;
import com.ailabtools.sdk.generated.response.PortraitSkinAnalysisAdvancedResponse;
import com.ailabtools.sdk.generated.params.PortraitSkinAnalysisProfessionalParams;
import com.ailabtools.sdk.generated.response.PortraitSkinAnalysisProfessionalResponse;
import com.ailabtools.sdk.generated.params.PortraitSkinDiseaseDetectionParams;
import com.ailabtools.sdk.generated.response.PortraitSkinDiseaseDetectionResponse;
import com.ailabtools.sdk.generated.params.PortraitTryOnClothesParams;
import com.ailabtools.sdk.generated.response.PortraitTryOnClothesResponse;
import com.ailabtools.sdk.generated.params.PortraitTryOnClothesProParams;
import com.ailabtools.sdk.generated.response.PortraitTryOnClothesProResponse;
import com.ailabtools.sdk.generated.params.PortraitFacialBlurringParams;
import com.ailabtools.sdk.generated.response.PortraitFacialBlurringResponse;
import com.ailabtools.sdk.generated.params.PortraitExpressionEditingParams;
import com.ailabtools.sdk.generated.response.PortraitExpressionEditingResponse;
import com.ailabtools.sdk.generated.params.PortraitFaceRestorationEnhancementParams;
import com.ailabtools.sdk.generated.response.PortraitFaceRestorationEnhancementResponse;
import com.ailabtools.sdk.generated.params.PortraitFaceAttributeEditingParams;
import com.ailabtools.sdk.generated.response.PortraitFaceAttributeEditingResponse;
import com.ailabtools.sdk.generated.params.PortraitFacialBeautificationParams;
import com.ailabtools.sdk.generated.response.PortraitFacialBeautificationResponse;
import com.ailabtools.sdk.generated.params.PortraitFacialBeautificationAdvancedParams;
import com.ailabtools.sdk.generated.response.PortraitFacialBeautificationAdvancedResponse;
import com.ailabtools.sdk.generated.params.PortraitFacialBeautificationProParams;
import com.ailabtools.sdk.generated.response.PortraitFacialBeautificationProResponse;
import com.ailabtools.sdk.generated.params.PortraitFacialFiltersParams;
import com.ailabtools.sdk.generated.response.PortraitFacialFiltersResponse;
import com.ailabtools.sdk.generated.params.PortraitFaceFusionParams;
import com.ailabtools.sdk.generated.response.PortraitFaceFusionResponse;
import com.ailabtools.sdk.generated.params.PortraitHairstyleEditingParams;
import com.ailabtools.sdk.generated.response.PortraitHairstyleEditingResponse;
import com.ailabtools.sdk.generated.params.PortraitHairstyleEditingProParams;
import com.ailabtools.sdk.generated.response.PortraitHairstyleEditingProResponse;
import com.ailabtools.sdk.generated.params.PortraitLipsColorChangerParams;
import com.ailabtools.sdk.generated.response.PortraitLipsColorChangerResponse;
import com.ailabtools.sdk.generated.params.PortraitLivePhotosParams;
import com.ailabtools.sdk.generated.response.PortraitLivePhotosResponse;
import com.ailabtools.sdk.generated.params.PortraitCartoonYourselfParams;
import com.ailabtools.sdk.generated.response.PortraitCartoonYourselfResponse;
import com.ailabtools.sdk.generated.params.PortraitIntelligentBeautificationParams;
import com.ailabtools.sdk.generated.response.PortraitIntelligentBeautificationResponse;
import com.ailabtools.sdk.generated.params.PortraitIntelligentFaceSlimmingParams;
import com.ailabtools.sdk.generated.response.PortraitIntelligentFaceSlimmingResponse;
import com.ailabtools.sdk.generated.params.PortraitIntelligentSkinRetouchingParams;
import com.ailabtools.sdk.generated.response.PortraitIntelligentSkinRetouchingResponse;
import com.ailabtools.sdk.generated.params.PortraitTryOnClothesRefinerParams;
import com.ailabtools.sdk.generated.response.PortraitTryOnClothesRefinerResponse;

/** AILabTools portrait API methods. */
public final class PortraitApi {
    private final Requester requester;

    public PortraitApi(Requester requester) {
        this.requester = requester;
    }

    public PortraitFaceAnalyzerResponse portraitFaceAnalyzer(PortraitFaceAnalyzerParams params) {
        return requester.request("POST", "/api/portrait/analysis/face-analyzer", params.toMap(), true, PortraitFaceAnalyzerResponse.class);
    }

    public PortraitFaceAnalyzerAdvancedResponse portraitFaceAnalyzerAdvanced(PortraitFaceAnalyzerAdvancedParams params) {
        return requester.request("POST", "/api/portrait/analysis/face-analyzer-advanced", params.toMap(), true, PortraitFaceAnalyzerAdvancedResponse.class);
    }

    public PortraitFacialLandmarksResponse portraitFacialLandmarks(PortraitFacialLandmarksParams params) {
        return requester.request("POST", "/api/portrait/analysis/face-key-points", params.toMap(), true, PortraitFacialLandmarksResponse.class);
    }

    public PortraitSkinAnalysisBasicResponse portraitSkinAnalysisBasic(PortraitSkinAnalysisBasicParams params) {
        return requester.request("POST", "/api/portrait/analysis/skin-analysis", params.toMap(), true, PortraitSkinAnalysisBasicResponse.class);
    }

    public PortraitSkinAnalysisAdvancedResponse portraitSkinAnalysisAdvanced(PortraitSkinAnalysisAdvancedParams params) {
        return requester.request("POST", "/api/portrait/analysis/skin-analysis-advanced", params.toMap(), true, PortraitSkinAnalysisAdvancedResponse.class);
    }

    public PortraitSkinAnalysisProfessionalResponse portraitSkinAnalysisProfessional(PortraitSkinAnalysisProfessionalParams params) {
        return requester.request("POST", "/api/portrait/analysis/skin-analysis-pro", params.toMap(), true, PortraitSkinAnalysisProfessionalResponse.class);
    }

    public PortraitSkinDiseaseDetectionResponse portraitSkinDiseaseDetection(PortraitSkinDiseaseDetectionParams params) {
        return requester.request("POST", "/api/portrait/analysis/skin-disease-detection", params.toMap(), true, PortraitSkinDiseaseDetectionResponse.class);
    }

    public PortraitTryOnClothesResponse portraitTryOnClothes(PortraitTryOnClothesParams params) {
        return requester.request("POST", "/api/portrait/editing/try-on-clothes", params.toMap(), true, PortraitTryOnClothesResponse.class);
    }

    public PortraitTryOnClothesProResponse portraitTryOnClothesPro(PortraitTryOnClothesProParams params) {
        return requester.request("POST", "/api/portrait/editing/try-on-clothes-pro", params.toMap(), true, PortraitTryOnClothesProResponse.class);
    }

    public PortraitFacialBlurringResponse portraitFacialBlurring(PortraitFacialBlurringParams params) {
        return requester.request("POST", "/api/portrait/effects/blurred-faces", params.toMap(), true, PortraitFacialBlurringResponse.class);
    }

    public PortraitExpressionEditingResponse portraitExpressionEditing(PortraitExpressionEditingParams params) {
        return requester.request("POST", "/api/portrait/effects/emotion-editor", params.toMap(), true, PortraitExpressionEditingResponse.class);
    }

    public PortraitFaceRestorationEnhancementResponse portraitFaceRestorationEnhancement(PortraitFaceRestorationEnhancementParams params) {
        return requester.request("POST", "/api/portrait/effects/enhance-face", params.toMap(), true, PortraitFaceRestorationEnhancementResponse.class);
    }

    public PortraitFaceAttributeEditingResponse portraitFaceAttributeEditing(PortraitFaceAttributeEditingParams params) {
        return requester.request("POST", "/api/portrait/effects/face-attribute-editing", params.toMap(), true, PortraitFaceAttributeEditingResponse.class);
    }

    public PortraitFacialBeautificationResponse portraitFacialBeautification(PortraitFacialBeautificationParams params) {
        return requester.request("POST", "/api/portrait/effects/face-beauty", params.toMap(), true, PortraitFacialBeautificationResponse.class);
    }

    public PortraitFacialBeautificationAdvancedResponse portraitFacialBeautificationAdvanced(PortraitFacialBeautificationAdvancedParams params) {
        return requester.request("POST", "/api/portrait/effects/face-beauty-advanced", params.toMap(), true, PortraitFacialBeautificationAdvancedResponse.class);
    }

    public PortraitFacialBeautificationProResponse portraitFacialBeautificationPro(PortraitFacialBeautificationProParams params) {
        return requester.request("POST", "/api/portrait/effects/face-beauty-pro", params.toMap(), true, PortraitFacialBeautificationProResponse.class);
    }

    public PortraitFacialFiltersResponse portraitFacialFilters(PortraitFacialFiltersParams params) {
        return requester.request("POST", "/api/portrait/effects/face-filter", params.toMap(), true, PortraitFacialFiltersResponse.class);
    }

    public PortraitFaceFusionResponse portraitFaceFusion(PortraitFaceFusionParams params) {
        return requester.request("POST", "/api/portrait/effects/face-fusion", params.toMap(), true, PortraitFaceFusionResponse.class);
    }

    public PortraitHairstyleEditingResponse portraitHairstyleEditing(PortraitHairstyleEditingParams params) {
        return requester.request("POST", "/api/portrait/effects/hairstyle-editor", params.toMap(), true, PortraitHairstyleEditingResponse.class);
    }

    public PortraitHairstyleEditingProResponse portraitHairstyleEditingPro(PortraitHairstyleEditingProParams params) {
        return requester.request("POST", "/api/portrait/effects/hairstyle-editor-pro", params.toMap(), true, PortraitHairstyleEditingProResponse.class);
    }

    public PortraitLipsColorChangerResponse portraitLipsColorChanger(PortraitLipsColorChangerParams params) {
        return requester.request("POST", "/api/portrait/effects/lips-color-changer", params.toMap(), true, PortraitLipsColorChangerResponse.class);
    }

    public PortraitLivePhotosResponse portraitLivePhotos(PortraitLivePhotosParams params) {
        return requester.request("POST", "/api/portrait/effects/live-photo", params.toMap(), true, PortraitLivePhotosResponse.class);
    }

    public PortraitCartoonYourselfResponse portraitCartoonYourself(PortraitCartoonYourselfParams params) {
        return requester.request("POST", "/api/portrait/effects/portrait-animation", params.toMap(), true, PortraitCartoonYourselfResponse.class);
    }

    public PortraitIntelligentBeautificationResponse portraitIntelligentBeautification(PortraitIntelligentBeautificationParams params) {
        return requester.request("POST", "/api/portrait/effects/smart-beauty", params.toMap(), true, PortraitIntelligentBeautificationResponse.class);
    }

    public PortraitIntelligentFaceSlimmingResponse portraitIntelligentFaceSlimming(PortraitIntelligentFaceSlimmingParams params) {
        return requester.request("POST", "/api/portrait/effects/smart-face-slimming", params.toMap(), true, PortraitIntelligentFaceSlimmingResponse.class);
    }

    public PortraitIntelligentSkinRetouchingResponse portraitIntelligentSkinRetouching(PortraitIntelligentSkinRetouchingParams params) {
        return requester.request("POST", "/api/portrait/effects/smart-skin", params.toMap(), true, PortraitIntelligentSkinRetouchingResponse.class);
    }

    public PortraitTryOnClothesRefinerResponse portraitTryOnClothesRefiner(PortraitTryOnClothesRefinerParams params) {
        return requester.request("POST", "/api/portrait/enhance/try-on-clothes-refiner", params.toMap(), true, PortraitTryOnClothesRefinerResponse.class);
    }

    public PortraitHairstyleEditingProResponse changeHairstyle(PortraitHairstyleEditingProParams params) {
        return portraitHairstyleEditingPro(params);
    }

    public PortraitIntelligentBeautificationResponse retouch(PortraitIntelligentBeautificationParams params) {
        return portraitIntelligentBeautification(params);
    }

}
