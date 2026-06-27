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

}
