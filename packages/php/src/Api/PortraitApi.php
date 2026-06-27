<?php

declare(strict_types=1);

namespace AILabTools\Api;

use AILabTools\Http\Requester;
use AILabTools\Generated\Params\PortraitFaceAnalyzerParams;
use AILabTools\Generated\Response\PortraitFaceAnalyzerResponse;
use AILabTools\Generated\Params\PortraitFaceAnalyzerAdvancedParams;
use AILabTools\Generated\Response\PortraitFaceAnalyzerAdvancedResponse;
use AILabTools\Generated\Params\PortraitFacialLandmarksParams;
use AILabTools\Generated\Response\PortraitFacialLandmarksResponse;
use AILabTools\Generated\Params\PortraitSkinAnalysisBasicParams;
use AILabTools\Generated\Response\PortraitSkinAnalysisBasicResponse;
use AILabTools\Generated\Params\PortraitSkinAnalysisAdvancedParams;
use AILabTools\Generated\Response\PortraitSkinAnalysisAdvancedResponse;
use AILabTools\Generated\Params\PortraitSkinAnalysisProfessionalParams;
use AILabTools\Generated\Response\PortraitSkinAnalysisProfessionalResponse;
use AILabTools\Generated\Params\PortraitSkinDiseaseDetectionParams;
use AILabTools\Generated\Response\PortraitSkinDiseaseDetectionResponse;
use AILabTools\Generated\Params\PortraitTryOnClothesParams;
use AILabTools\Generated\Response\PortraitTryOnClothesResponse;
use AILabTools\Generated\Params\PortraitTryOnClothesProParams;
use AILabTools\Generated\Response\PortraitTryOnClothesProResponse;
use AILabTools\Generated\Params\PortraitFacialBlurringParams;
use AILabTools\Generated\Response\PortraitFacialBlurringResponse;
use AILabTools\Generated\Params\PortraitExpressionEditingParams;
use AILabTools\Generated\Response\PortraitExpressionEditingResponse;
use AILabTools\Generated\Params\PortraitFaceRestorationEnhancementParams;
use AILabTools\Generated\Response\PortraitFaceRestorationEnhancementResponse;
use AILabTools\Generated\Params\PortraitFaceAttributeEditingParams;
use AILabTools\Generated\Response\PortraitFaceAttributeEditingResponse;
use AILabTools\Generated\Params\PortraitFacialBeautificationParams;
use AILabTools\Generated\Response\PortraitFacialBeautificationResponse;
use AILabTools\Generated\Params\PortraitFacialBeautificationAdvancedParams;
use AILabTools\Generated\Response\PortraitFacialBeautificationAdvancedResponse;
use AILabTools\Generated\Params\PortraitFacialBeautificationProParams;
use AILabTools\Generated\Response\PortraitFacialBeautificationProResponse;
use AILabTools\Generated\Params\PortraitFacialFiltersParams;
use AILabTools\Generated\Response\PortraitFacialFiltersResponse;
use AILabTools\Generated\Params\PortraitFaceFusionParams;
use AILabTools\Generated\Response\PortraitFaceFusionResponse;
use AILabTools\Generated\Params\PortraitHairstyleEditingParams;
use AILabTools\Generated\Response\PortraitHairstyleEditingResponse;
use AILabTools\Generated\Params\PortraitHairstyleEditingProParams;
use AILabTools\Generated\Response\PortraitHairstyleEditingProResponse;
use AILabTools\Generated\Params\PortraitLipsColorChangerParams;
use AILabTools\Generated\Response\PortraitLipsColorChangerResponse;
use AILabTools\Generated\Params\PortraitLivePhotosParams;
use AILabTools\Generated\Response\PortraitLivePhotosResponse;
use AILabTools\Generated\Params\PortraitCartoonYourselfParams;
use AILabTools\Generated\Response\PortraitCartoonYourselfResponse;
use AILabTools\Generated\Params\PortraitIntelligentBeautificationParams;
use AILabTools\Generated\Response\PortraitIntelligentBeautificationResponse;
use AILabTools\Generated\Params\PortraitIntelligentFaceSlimmingParams;
use AILabTools\Generated\Response\PortraitIntelligentFaceSlimmingResponse;
use AILabTools\Generated\Params\PortraitIntelligentSkinRetouchingParams;
use AILabTools\Generated\Response\PortraitIntelligentSkinRetouchingResponse;
use AILabTools\Generated\Params\PortraitTryOnClothesRefinerParams;
use AILabTools\Generated\Response\PortraitTryOnClothesRefinerResponse;

use AILabTools\Generated\Params\PortraitAIFaceRatingParams;
use AILabTools\Generated\Response\PortraitAIFaceRatingResponse;
use AILabTools\Generated\Params\PortraitAIBaldParams;
use AILabTools\Generated\Response\PortraitAIBaldResponse;
use AILabTools\Generated\Params\PortraitAIBeardRemovalParams;
use AILabTools\Generated\Response\PortraitAIBeardRemovalResponse;
use AILabTools\Generated\Params\PortraitAIBeardStylingParams;
use AILabTools\Generated\Response\PortraitAIBeardStylingResponse;
use AILabTools\Generated\Params\PortraitAIBreastExpansionParams;
use AILabTools\Generated\Response\PortraitAIBreastExpansionResponse;
use AILabTools\Generated\Params\PortraitAIButtEnhancementParams;
use AILabTools\Generated\Response\PortraitAIButtEnhancementResponse;
use AILabTools\Generated\Params\PortraitAIColoredContactsParams;
use AILabTools\Generated\Response\PortraitAIColoredContactsResponse;
use AILabTools\Generated\Params\PortraitAIEyebrowsParams;
use AILabTools\Generated\Response\PortraitAIEyebrowsResponse;
use AILabTools\Generated\Params\PortraitAIEyelashesParams;
use AILabTools\Generated\Response\PortraitAIEyelashesResponse;
use AILabTools\Generated\Params\PortraitAIEyeshadowTryOnParams;
use AILabTools\Generated\Response\PortraitAIEyeshadowTryOnResponse;
use AILabTools\Generated\Params\PortraitAIFaceSwapParams;
use AILabTools\Generated\Response\PortraitAIFaceSwapResponse;
use AILabTools\Generated\Params\PortraitAIFatFilterParams;
use AILabTools\Generated\Response\PortraitAIFatFilterResponse;
use AILabTools\Generated\Params\PortraitAIHairColorParams;
use AILabTools\Generated\Response\PortraitAIHairColorResponse;
use AILabTools\Generated\Params\PortraitAIHairLossSimulationParams;
use AILabTools\Generated\Response\PortraitAIHairLossSimulationResponse;
use AILabTools\Generated\Params\PortraitAILipEnhancementParams;
use AILabTools\Generated\Response\PortraitAILipEnhancementResponse;
use AILabTools\Generated\Params\PortraitAIWaistSlimmingParams;
use AILabTools\Generated\Response\PortraitAIWaistSlimmingResponse;
use AILabTools\Generated\Params\PortraitTryOnClothesPremiumParams;
use AILabTools\Generated\Response\PortraitTryOnClothesPremiumResponse;
use AILabTools\Generated\Params\PortraitAIBigHeadEffectParams;
use AILabTools\Generated\Response\PortraitAIBigHeadEffectResponse;
use AILabTools\Generated\Params\PortraitAIHalloweenMaskParams;
use AILabTools\Generated\Response\PortraitAIHalloweenMaskResponse;
use AILabTools\Generated\Params\PortraitAILipBiteExpressionsParams;
use AILabTools\Generated\Response\PortraitAILipBiteExpressionsResponse;
use AILabTools\Generated\Params\PortraitAIRedLipGlossParams;
use AILabTools\Generated\Response\PortraitAIRedLipGlossResponse;
use AILabTools\Generated\Params\PortraitAISquareFaceFilterParams;
use AILabTools\Generated\Response\PortraitAISquareFaceFilterResponse;
use AILabTools\Generated\Params\PortraitExpressionEditingAdvancedParams;
use AILabTools\Generated\Response\PortraitExpressionEditingAdvancedResponse;
use AILabTools\Generated\Params\PortraitHairstyleEditingPremiumParams;
use AILabTools\Generated\Response\PortraitHairstyleEditingPremiumResponse;
use AILabTools\Generated\Params\PortraitAISkinEnhancementAdvancedParams;
use AILabTools\Generated\Response\PortraitAISkinEnhancementAdvancedResponse;

final class PortraitApi
{
    public function __construct(private readonly Requester $requester)
    {
    }

    public function portraitFaceAnalyzer(PortraitFaceAnalyzerParams $params): PortraitFaceAnalyzerResponse
    {
        /** @var PortraitFaceAnalyzerResponse */
        return $this->requester->request('POST', '/api/portrait/analysis/face-analyzer', $params->toArray(), true, [PortraitFaceAnalyzerResponse::class, 'fromArray']);
    }

    public function portraitFaceAnalyzerAdvanced(PortraitFaceAnalyzerAdvancedParams $params): PortraitFaceAnalyzerAdvancedResponse
    {
        /** @var PortraitFaceAnalyzerAdvancedResponse */
        return $this->requester->request('POST', '/api/portrait/analysis/face-analyzer-advanced', $params->toArray(), true, [PortraitFaceAnalyzerAdvancedResponse::class, 'fromArray']);
    }

    public function portraitFacialLandmarks(PortraitFacialLandmarksParams $params): PortraitFacialLandmarksResponse
    {
        /** @var PortraitFacialLandmarksResponse */
        return $this->requester->request('POST', '/api/portrait/analysis/face-key-points', $params->toArray(), true, [PortraitFacialLandmarksResponse::class, 'fromArray']);
    }

    public function portraitSkinAnalysisBasic(PortraitSkinAnalysisBasicParams $params): PortraitSkinAnalysisBasicResponse
    {
        /** @var PortraitSkinAnalysisBasicResponse */
        return $this->requester->request('POST', '/api/portrait/analysis/skin-analysis', $params->toArray(), true, [PortraitSkinAnalysisBasicResponse::class, 'fromArray']);
    }

    public function portraitSkinAnalysisAdvanced(PortraitSkinAnalysisAdvancedParams $params): PortraitSkinAnalysisAdvancedResponse
    {
        /** @var PortraitSkinAnalysisAdvancedResponse */
        return $this->requester->request('POST', '/api/portrait/analysis/skin-analysis-advanced', $params->toArray(), true, [PortraitSkinAnalysisAdvancedResponse::class, 'fromArray']);
    }

    public function portraitSkinAnalysisProfessional(PortraitSkinAnalysisProfessionalParams $params): PortraitSkinAnalysisProfessionalResponse
    {
        /** @var PortraitSkinAnalysisProfessionalResponse */
        return $this->requester->request('POST', '/api/portrait/analysis/skin-analysis-pro', $params->toArray(), true, [PortraitSkinAnalysisProfessionalResponse::class, 'fromArray']);
    }

    public function portraitSkinDiseaseDetection(PortraitSkinDiseaseDetectionParams $params): PortraitSkinDiseaseDetectionResponse
    {
        /** @var PortraitSkinDiseaseDetectionResponse */
        return $this->requester->request('POST', '/api/portrait/analysis/skin-disease-detection', $params->toArray(), true, [PortraitSkinDiseaseDetectionResponse::class, 'fromArray']);
    }

    public function portraitTryOnClothes(PortraitTryOnClothesParams $params): PortraitTryOnClothesResponse
    {
        /** @var PortraitTryOnClothesResponse */
        return $this->requester->request('POST', '/api/portrait/editing/try-on-clothes', $params->toArray(), true, [PortraitTryOnClothesResponse::class, 'fromArray']);
    }

    public function portraitTryOnClothesPro(PortraitTryOnClothesProParams $params): PortraitTryOnClothesProResponse
    {
        /** @var PortraitTryOnClothesProResponse */
        return $this->requester->request('POST', '/api/portrait/editing/try-on-clothes-pro', $params->toArray(), true, [PortraitTryOnClothesProResponse::class, 'fromArray']);
    }

    public function portraitFacialBlurring(PortraitFacialBlurringParams $params): PortraitFacialBlurringResponse
    {
        /** @var PortraitFacialBlurringResponse */
        return $this->requester->request('POST', '/api/portrait/effects/blurred-faces', $params->toArray(), true, [PortraitFacialBlurringResponse::class, 'fromArray']);
    }

    public function portraitExpressionEditing(PortraitExpressionEditingParams $params): PortraitExpressionEditingResponse
    {
        /** @var PortraitExpressionEditingResponse */
        return $this->requester->request('POST', '/api/portrait/effects/emotion-editor', $params->toArray(), true, [PortraitExpressionEditingResponse::class, 'fromArray']);
    }

    public function portraitFaceRestorationEnhancement(PortraitFaceRestorationEnhancementParams $params): PortraitFaceRestorationEnhancementResponse
    {
        /** @var PortraitFaceRestorationEnhancementResponse */
        return $this->requester->request('POST', '/api/portrait/effects/enhance-face', $params->toArray(), true, [PortraitFaceRestorationEnhancementResponse::class, 'fromArray']);
    }

    public function portraitFaceAttributeEditing(PortraitFaceAttributeEditingParams $params): PortraitFaceAttributeEditingResponse
    {
        /** @var PortraitFaceAttributeEditingResponse */
        return $this->requester->request('POST', '/api/portrait/effects/face-attribute-editing', $params->toArray(), true, [PortraitFaceAttributeEditingResponse::class, 'fromArray']);
    }

    public function portraitFacialBeautification(PortraitFacialBeautificationParams $params): PortraitFacialBeautificationResponse
    {
        /** @var PortraitFacialBeautificationResponse */
        return $this->requester->request('POST', '/api/portrait/effects/face-beauty', $params->toArray(), true, [PortraitFacialBeautificationResponse::class, 'fromArray']);
    }

    public function portraitFacialBeautificationAdvanced(PortraitFacialBeautificationAdvancedParams $params): PortraitFacialBeautificationAdvancedResponse
    {
        /** @var PortraitFacialBeautificationAdvancedResponse */
        return $this->requester->request('POST', '/api/portrait/effects/face-beauty-advanced', $params->toArray(), true, [PortraitFacialBeautificationAdvancedResponse::class, 'fromArray']);
    }

    public function portraitFacialBeautificationPro(PortraitFacialBeautificationProParams $params): PortraitFacialBeautificationProResponse
    {
        /** @var PortraitFacialBeautificationProResponse */
        return $this->requester->request('POST', '/api/portrait/effects/face-beauty-pro', $params->toArray(), true, [PortraitFacialBeautificationProResponse::class, 'fromArray']);
    }

    public function portraitFacialFilters(PortraitFacialFiltersParams $params): PortraitFacialFiltersResponse
    {
        /** @var PortraitFacialFiltersResponse */
        return $this->requester->request('POST', '/api/portrait/effects/face-filter', $params->toArray(), true, [PortraitFacialFiltersResponse::class, 'fromArray']);
    }

    public function portraitFaceFusion(PortraitFaceFusionParams $params): PortraitFaceFusionResponse
    {
        /** @var PortraitFaceFusionResponse */
        return $this->requester->request('POST', '/api/portrait/effects/face-fusion', $params->toArray(), true, [PortraitFaceFusionResponse::class, 'fromArray']);
    }

    public function portraitHairstyleEditing(PortraitHairstyleEditingParams $params): PortraitHairstyleEditingResponse
    {
        /** @var PortraitHairstyleEditingResponse */
        return $this->requester->request('POST', '/api/portrait/effects/hairstyle-editor', $params->toArray(), true, [PortraitHairstyleEditingResponse::class, 'fromArray']);
    }

    public function portraitHairstyleEditingPro(PortraitHairstyleEditingProParams $params): PortraitHairstyleEditingProResponse
    {
        /** @var PortraitHairstyleEditingProResponse */
        return $this->requester->request('POST', '/api/portrait/effects/hairstyle-editor-pro', $params->toArray(), true, [PortraitHairstyleEditingProResponse::class, 'fromArray']);
    }

    public function portraitLipsColorChanger(PortraitLipsColorChangerParams $params): PortraitLipsColorChangerResponse
    {
        /** @var PortraitLipsColorChangerResponse */
        return $this->requester->request('POST', '/api/portrait/effects/lips-color-changer', $params->toArray(), true, [PortraitLipsColorChangerResponse::class, 'fromArray']);
    }

    public function portraitLivePhotos(PortraitLivePhotosParams $params): PortraitLivePhotosResponse
    {
        /** @var PortraitLivePhotosResponse */
        return $this->requester->request('POST', '/api/portrait/effects/live-photo', $params->toArray(), true, [PortraitLivePhotosResponse::class, 'fromArray']);
    }

    public function portraitCartoonYourself(PortraitCartoonYourselfParams $params): PortraitCartoonYourselfResponse
    {
        /** @var PortraitCartoonYourselfResponse */
        return $this->requester->request('POST', '/api/portrait/effects/portrait-animation', $params->toArray(), true, [PortraitCartoonYourselfResponse::class, 'fromArray']);
    }

    public function portraitIntelligentBeautification(PortraitIntelligentBeautificationParams $params): PortraitIntelligentBeautificationResponse
    {
        /** @var PortraitIntelligentBeautificationResponse */
        return $this->requester->request('POST', '/api/portrait/effects/smart-beauty', $params->toArray(), true, [PortraitIntelligentBeautificationResponse::class, 'fromArray']);
    }

    public function portraitIntelligentFaceSlimming(PortraitIntelligentFaceSlimmingParams $params): PortraitIntelligentFaceSlimmingResponse
    {
        /** @var PortraitIntelligentFaceSlimmingResponse */
        return $this->requester->request('POST', '/api/portrait/effects/smart-face-slimming', $params->toArray(), true, [PortraitIntelligentFaceSlimmingResponse::class, 'fromArray']);
    }

    public function portraitIntelligentSkinRetouching(PortraitIntelligentSkinRetouchingParams $params): PortraitIntelligentSkinRetouchingResponse
    {
        /** @var PortraitIntelligentSkinRetouchingResponse */
        return $this->requester->request('POST', '/api/portrait/effects/smart-skin', $params->toArray(), true, [PortraitIntelligentSkinRetouchingResponse::class, 'fromArray']);
    }

    public function portraitTryOnClothesRefiner(PortraitTryOnClothesRefinerParams $params): PortraitTryOnClothesRefinerResponse
    {
        /** @var PortraitTryOnClothesRefinerResponse */
        return $this->requester->request('POST', '/api/portrait/enhance/try-on-clothes-refiner', $params->toArray(), true, [PortraitTryOnClothesRefinerResponse::class, 'fromArray']);
    }

    public function changeHairstyle(PortraitHairstyleEditingProParams $params): PortraitHairstyleEditingProResponse
    {
        return $this->portraitHairstyleEditingPro($params);
    }

    public function retouch(PortraitIntelligentBeautificationParams $params): PortraitIntelligentBeautificationResponse
    {
        return $this->portraitIntelligentBeautification($params);
    }

    // BEGIN GENERATED OPENAPI ADDITIONS
    public function portraitAIFaceRating(PortraitAIFaceRatingParams $params): PortraitAIFaceRatingResponse
    {
        /** @var PortraitAIFaceRatingResponse */
        return $this->requester->request('POST', '/api/portrait/analysis/ai-face-rating', $params->toArray(), true, [PortraitAIFaceRatingResponse::class, 'fromArray']);
    }

    public function portraitAIBald(PortraitAIBaldParams $params): PortraitAIBaldResponse
    {
        /** @var PortraitAIBaldResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-bald', $params->toArray(), true, [PortraitAIBaldResponse::class, 'fromArray']);
    }

    public function portraitAIBeardRemoval(PortraitAIBeardRemovalParams $params): PortraitAIBeardRemovalResponse
    {
        /** @var PortraitAIBeardRemovalResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-beard-removal', $params->toArray(), true, [PortraitAIBeardRemovalResponse::class, 'fromArray']);
    }

    public function portraitAIBeardStyling(PortraitAIBeardStylingParams $params): PortraitAIBeardStylingResponse
    {
        /** @var PortraitAIBeardStylingResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-beard-styling', $params->toArray(), true, [PortraitAIBeardStylingResponse::class, 'fromArray']);
    }

    public function portraitAIBreastExpansion(PortraitAIBreastExpansionParams $params): PortraitAIBreastExpansionResponse
    {
        /** @var PortraitAIBreastExpansionResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-big-tits', $params->toArray(), true, [PortraitAIBreastExpansionResponse::class, 'fromArray']);
    }

    public function portraitAIButtEnhancement(PortraitAIButtEnhancementParams $params): PortraitAIButtEnhancementResponse
    {
        /** @var PortraitAIButtEnhancementResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-butt-enhancement', $params->toArray(), true, [PortraitAIButtEnhancementResponse::class, 'fromArray']);
    }

    public function portraitAIColoredContacts(PortraitAIColoredContactsParams $params): PortraitAIColoredContactsResponse
    {
        /** @var PortraitAIColoredContactsResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-colored-contacts', $params->toArray(), true, [PortraitAIColoredContactsResponse::class, 'fromArray']);
    }

    public function portraitAIEyebrows(PortraitAIEyebrowsParams $params): PortraitAIEyebrowsResponse
    {
        /** @var PortraitAIEyebrowsResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-eyebrows', $params->toArray(), true, [PortraitAIEyebrowsResponse::class, 'fromArray']);
    }

    public function portraitAIEyelashes(PortraitAIEyelashesParams $params): PortraitAIEyelashesResponse
    {
        /** @var PortraitAIEyelashesResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-eyelashes', $params->toArray(), true, [PortraitAIEyelashesResponse::class, 'fromArray']);
    }

    public function portraitAIEyeshadowTryOn(PortraitAIEyeshadowTryOnParams $params): PortraitAIEyeshadowTryOnResponse
    {
        /** @var PortraitAIEyeshadowTryOnResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-eyeshadow', $params->toArray(), true, [PortraitAIEyeshadowTryOnResponse::class, 'fromArray']);
    }

    public function portraitAIFaceSwap(PortraitAIFaceSwapParams $params): PortraitAIFaceSwapResponse
    {
        /** @var PortraitAIFaceSwapResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-face-swap', $params->toArray(), true, [PortraitAIFaceSwapResponse::class, 'fromArray']);
    }

    public function portraitAIFatFilter(PortraitAIFatFilterParams $params): PortraitAIFatFilterResponse
    {
        /** @var PortraitAIFatFilterResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-fat-filter', $params->toArray(), true, [PortraitAIFatFilterResponse::class, 'fromArray']);
    }

    public function portraitAIHairColor(PortraitAIHairColorParams $params): PortraitAIHairColorResponse
    {
        /** @var PortraitAIHairColorResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-hair-color', $params->toArray(), true, [PortraitAIHairColorResponse::class, 'fromArray']);
    }

    public function portraitAIHairLossSimulation(PortraitAIHairLossSimulationParams $params): PortraitAIHairLossSimulationResponse
    {
        /** @var PortraitAIHairLossSimulationResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-hair-loss-simulation', $params->toArray(), true, [PortraitAIHairLossSimulationResponse::class, 'fromArray']);
    }

    public function portraitAILipEnhancement(PortraitAILipEnhancementParams $params): PortraitAILipEnhancementResponse
    {
        /** @var PortraitAILipEnhancementResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-lip-enhancement', $params->toArray(), true, [PortraitAILipEnhancementResponse::class, 'fromArray']);
    }

    public function portraitAIWaistSlimming(PortraitAIWaistSlimmingParams $params): PortraitAIWaistSlimmingResponse
    {
        /** @var PortraitAIWaistSlimmingResponse */
        return $this->requester->request('POST', '/api/portrait/editing/ai-waist-slimming', $params->toArray(), true, [PortraitAIWaistSlimmingResponse::class, 'fromArray']);
    }

    public function portraitTryOnClothesPremium(PortraitTryOnClothesPremiumParams $params): PortraitTryOnClothesPremiumResponse
    {
        /** @var PortraitTryOnClothesPremiumResponse */
        return $this->requester->request('POST', '/api/portrait/editing/try-on-clothes-premium', $params->toArray(), true, [PortraitTryOnClothesPremiumResponse::class, 'fromArray']);
    }

    public function portraitAIBigHeadEffect(PortraitAIBigHeadEffectParams $params): PortraitAIBigHeadEffectResponse
    {
        /** @var PortraitAIBigHeadEffectResponse */
        return $this->requester->request('POST', '/api/portrait/effects/ai-big-head-effect', $params->toArray(), true, [PortraitAIBigHeadEffectResponse::class, 'fromArray']);
    }

    public function portraitAIHalloweenMask(PortraitAIHalloweenMaskParams $params): PortraitAIHalloweenMaskResponse
    {
        /** @var PortraitAIHalloweenMaskResponse */
        return $this->requester->request('POST', '/api/portrait/effects/ai-halloween-mask', $params->toArray(), true, [PortraitAIHalloweenMaskResponse::class, 'fromArray']);
    }

    public function portraitAILipBiteExpressions(PortraitAILipBiteExpressionsParams $params): PortraitAILipBiteExpressionsResponse
    {
        /** @var PortraitAILipBiteExpressionsResponse */
        return $this->requester->request('POST', '/api/portrait/effects/ai-lip-bite-expressions', $params->toArray(), true, [PortraitAILipBiteExpressionsResponse::class, 'fromArray']);
    }

    public function portraitAIRedLipGloss(PortraitAIRedLipGlossParams $params): PortraitAIRedLipGlossResponse
    {
        /** @var PortraitAIRedLipGlossResponse */
        return $this->requester->request('POST', '/api/portrait/effects/ai-red-lip-gloss', $params->toArray(), true, [PortraitAIRedLipGlossResponse::class, 'fromArray']);
    }

    public function portraitAISquareFaceFilter(PortraitAISquareFaceFilterParams $params): PortraitAISquareFaceFilterResponse
    {
        /** @var PortraitAISquareFaceFilterResponse */
        return $this->requester->request('POST', '/api/portrait/effects/ai-square-face-filter', $params->toArray(), true, [PortraitAISquareFaceFilterResponse::class, 'fromArray']);
    }

    public function portraitExpressionEditingAdvanced(PortraitExpressionEditingAdvancedParams $params): PortraitExpressionEditingAdvancedResponse
    {
        /** @var PortraitExpressionEditingAdvancedResponse */
        return $this->requester->request('POST', '/api/portrait/effects/emotion-editor-advanced', $params->toArray(), true, [PortraitExpressionEditingAdvancedResponse::class, 'fromArray']);
    }

    public function portraitHairstyleEditingPremium(PortraitHairstyleEditingPremiumParams $params): PortraitHairstyleEditingPremiumResponse
    {
        /** @var PortraitHairstyleEditingPremiumResponse */
        return $this->requester->request('POST', '/api/portrait/effects/hairstyle-editor-premium', $params->toArray(), true, [PortraitHairstyleEditingPremiumResponse::class, 'fromArray']);
    }

    public function portraitAISkinEnhancementAdvanced(PortraitAISkinEnhancementAdvancedParams $params): PortraitAISkinEnhancementAdvancedResponse
    {
        /** @var PortraitAISkinEnhancementAdvancedResponse */
        return $this->requester->request('POST', '/api/portrait/effects/smart-skin-advanced', $params->toArray(), true, [PortraitAISkinEnhancementAdvancedResponse::class, 'fromArray']);
    }
}
