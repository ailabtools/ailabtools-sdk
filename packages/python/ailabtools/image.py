from .http import Requester
from .utils import map_params
from .generated.endpoints import (
    ImageQueryingAsyncTaskResultsParams,
    ImageQueryingAsyncTaskResultsResponse,
    ImageQueryingAsyncTaskResultsParamMap,
    validate_imageQueryingAsyncTaskResults_params,
    ImageAiImageExtenderParams,
    ImageAiImageExtenderResponse,
    ImageAiImageExtenderParamMap,
    validate_imageAiImageExtender_params,
    ImageAiObjectReplacerParams,
    ImageAiObjectReplacerResponse,
    ImageAiObjectReplacerParamMap,
    validate_imageAiObjectReplacer_params,
    ImageAIImageCroppingParams,
    ImageAIImageCroppingResponse,
    ImageAIImageCroppingParamMap,
    validate_imageAIImageCropping_params,
    ImageErasureParams,
    ImageErasureResponse,
    ImageErasureParamMap,
    validate_imageErasure_params,
    ImageInvisibleImageWatermarkParams,
    ImageInvisibleImageWatermarkResponse,
    ImageInvisibleImageWatermarkParamMap,
    validate_imageInvisibleImageWatermark_params,
    ImageInvisibleTextWatermarkParams,
    ImageInvisibleTextWatermarkResponse,
    ImageInvisibleTextWatermarkParamMap,
    validate_imageInvisibleTextWatermark_params,
    ImageIntelligentCompositionParams,
    ImageIntelligentCompositionResponse,
    ImageIntelligentCompositionParamMap,
    validate_imageIntelligentComposition_params,
    ImagePhotoEditingParams,
    ImagePhotoEditingResponse,
    ImagePhotoEditingParamMap,
    validate_imagePhotoEditing_params,
    ImageRemoveObjectsParams,
    ImageRemoveObjectsResponse,
    ImageRemoveObjectsParamMap,
    validate_imageRemoveObjects_params,
    ImageRemoveObjectsAdvancedParams,
    ImageRemoveObjectsAdvancedResponse,
    ImageRemoveObjectsAdvancedParamMap,
    validate_imageRemoveObjectsAdvanced_params,
    ImageRemoveObjectsProParams,
    ImageRemoveObjectsProResponse,
    ImageRemoveObjectsProParamMap,
    validate_imageRemoveObjectsPro_params,
    ImageAICartoonGeneratorParams,
    ImageAICartoonGeneratorResponse,
    ImageAICartoonGeneratorParamMap,
    validate_imageAICartoonGenerator_params,
    ImageColoringParams,
    ImageColoringResponse,
    ImageColoringParamMap,
    validate_imageColoring_params,
    ImageStyleTransferParams,
    ImageStyleTransferResponse,
    ImageStyleTransferParamMap,
    validate_imageStyleTransfer_params,
    ImageStyleMigrationParams,
    ImageStyleMigrationResponse,
    ImageStyleMigrationParamMap,
    validate_imageStyleMigration_params,
    ImageColorEnhancementParams,
    ImageColorEnhancementResponse,
    ImageColorEnhancementParamMap,
    validate_imageColorEnhancement_params,
    ImageContrastEnhancementParams,
    ImageContrastEnhancementResponse,
    ImageContrastEnhancementParamMap,
    validate_imageContrastEnhancement_params,
    ImageDehazeParams,
    ImageDehazeResponse,
    ImageDehazeParamMap,
    validate_imageDehaze_params,
    ImageLosslessEnlargementParams,
    ImageLosslessEnlargementResponse,
    ImageLosslessEnlargementParamMap,
    validate_imageLosslessEnlargement_params,
    ImageClarityEnhancementParams,
    ImageClarityEnhancementResponse,
    ImageClarityEnhancementParamMap,
    validate_imageClarityEnhancement_params,
    ImageDistortionCorrectionParams,
    ImageDistortionCorrectionResponse,
    ImageDistortionCorrectionParamMap,
    validate_imageDistortionCorrection_params,
    ImageCompositionAestheticsScoreParams,
    ImageCompositionAestheticsScoreResponse,
    ImageCompositionAestheticsScoreParamMap,
    validate_imageCompositionAestheticsScore_params,
    ImageExposureRatingParams,
    ImageExposureRatingResponse,
    ImageExposureRatingParamMap,
    validate_imageExposureRating_params
)

class ImageAPI:
    def __init__(self, requester: Requester):
        self._requester = requester

    async def imageQueryingAsyncTaskResults(self, params: ImageQueryingAsyncTaskResultsParams) -> ImageQueryingAsyncTaskResultsResponse:
        validate_imageQueryingAsyncTaskResults_params(params)
        mapped = map_params(params, ImageQueryingAsyncTaskResultsParamMap)
        return await self._requester.request('GET', '/api/image/asyn-task-results', query=mapped)

    async def imageAiImageExtender(self, params: ImageAiImageExtenderParams) -> ImageAiImageExtenderResponse:
        validate_imageAiImageExtender_params(params)
        mapped = map_params(params, ImageAiImageExtenderParamMap)
        return await self._requester.request('POST', '/api/image/editing/ai-image-extender', body=mapped, multipart=True)

    async def imageAiObjectReplacer(self, params: ImageAiObjectReplacerParams) -> ImageAiObjectReplacerResponse:
        validate_imageAiObjectReplacer_params(params)
        mapped = map_params(params, ImageAiObjectReplacerParamMap)
        return await self._requester.request('POST', '/api/image/editing/ai-object-replacer', body=mapped, multipart=True)

    async def imageAIImageCropping(self, params: ImageAIImageCroppingParams) -> ImageAIImageCroppingResponse:
        validate_imageAIImageCropping_params(params)
        mapped = map_params(params, ImageAIImageCroppingParamMap)
        return await self._requester.request('POST', '/api/image/editing/image-cropping', body=mapped, multipart=True)

    async def imageErasure(self, params: ImageErasureParams) -> ImageErasureResponse:
        validate_imageErasure_params(params)
        mapped = map_params(params, ImageErasureParamMap)
        return await self._requester.request('POST', '/api/image/editing/image-erase', body=mapped, multipart=True)

    async def imageInvisibleImageWatermark(self, params: ImageInvisibleImageWatermarkParams) -> ImageInvisibleImageWatermarkResponse:
        validate_imageInvisibleImageWatermark_params(params)
        mapped = map_params(params, ImageInvisibleImageWatermarkParamMap)
        return await self._requester.request('POST', '/api/image/editing/image-invisible-image-watermark', body=mapped, multipart=True)

    async def imageInvisibleTextWatermark(self, params: ImageInvisibleTextWatermarkParams) -> ImageInvisibleTextWatermarkResponse:
        validate_imageInvisibleTextWatermark_params(params)
        mapped = map_params(params, ImageInvisibleTextWatermarkParamMap)
        return await self._requester.request('POST', '/api/image/editing/image-invisible-text-watermarking', body=mapped, multipart=True)

    async def imageIntelligentComposition(self, params: ImageIntelligentCompositionParams) -> ImageIntelligentCompositionResponse:
        validate_imageIntelligentComposition_params(params)
        mapped = map_params(params, ImageIntelligentCompositionParamMap)
        return await self._requester.request('POST', '/api/image/editing/intelligent-composition', body=mapped, multipart=True)

    async def imagePhotoEditing(self, params: ImagePhotoEditingParams) -> ImagePhotoEditingResponse:
        validate_imagePhotoEditing_params(params)
        mapped = map_params(params, ImagePhotoEditingParamMap)
        return await self._requester.request('POST', '/api/image/editing/photo-retouching', body=mapped, multipart=True)

    async def imageRemoveObjects(self, params: ImageRemoveObjectsParams) -> ImageRemoveObjectsResponse:
        validate_imageRemoveObjects_params(params)
        mapped = map_params(params, ImageRemoveObjectsParamMap)
        return await self._requester.request('POST', '/api/image/editing/remove-objects', body=mapped, multipart=True)

    async def imageRemoveObjectsAdvanced(self, params: ImageRemoveObjectsAdvancedParams) -> ImageRemoveObjectsAdvancedResponse:
        validate_imageRemoveObjectsAdvanced_params(params)
        mapped = map_params(params, ImageRemoveObjectsAdvancedParamMap)
        return await self._requester.request('POST', '/api/image/editing/remove-objects-advanced', body=mapped, multipart=True)

    async def imageRemoveObjectsPro(self, params: ImageRemoveObjectsProParams) -> ImageRemoveObjectsProResponse:
        validate_imageRemoveObjectsPro_params(params)
        mapped = map_params(params, ImageRemoveObjectsProParamMap)
        return await self._requester.request('POST', '/api/image/editing/remove-objects-pro', body=mapped, multipart=True)

    async def imageAICartoonGenerator(self, params: ImageAICartoonGeneratorParams) -> ImageAICartoonGeneratorResponse:
        validate_imageAICartoonGenerator_params(params)
        mapped = map_params(params, ImageAICartoonGeneratorParamMap)
        return await self._requester.request('POST', '/api/image/effects/ai-anime-generator', body=mapped, multipart=True)

    async def imageColoring(self, params: ImageColoringParams) -> ImageColoringResponse:
        validate_imageColoring_params(params)
        mapped = map_params(params, ImageColoringParamMap)
        return await self._requester.request('POST', '/api/image/effects/image-colorization', body=mapped, multipart=True)

    async def imageStyleTransfer(self, params: ImageStyleTransferParams) -> ImageStyleTransferResponse:
        validate_imageStyleTransfer_params(params)
        mapped = map_params(params, ImageStyleTransferParamMap)
        return await self._requester.request('POST', '/api/image/effects/image-style-conversion', body=mapped, multipart=True)

    async def imageStyleMigration(self, params: ImageStyleMigrationParams) -> ImageStyleMigrationResponse:
        validate_imageStyleMigration_params(params)
        mapped = map_params(params, ImageStyleMigrationParamMap)
        return await self._requester.request('POST', '/api/image/effects/image-style-migration', body=mapped, multipart=True)

    async def imageColorEnhancement(self, params: ImageColorEnhancementParams) -> ImageColorEnhancementResponse:
        validate_imageColorEnhancement_params(params)
        mapped = map_params(params, ImageColorEnhancementParamMap)
        return await self._requester.request('POST', '/api/image/enhance/image-color-enhancement', body=mapped, multipart=True)

    async def imageContrastEnhancement(self, params: ImageContrastEnhancementParams) -> ImageContrastEnhancementResponse:
        validate_imageContrastEnhancement_params(params)
        mapped = map_params(params, ImageContrastEnhancementParamMap)
        return await self._requester.request('POST', '/api/image/enhance/image-contrast-enhancement', body=mapped, multipart=True)

    async def imageDehaze(self, params: ImageDehazeParams) -> ImageDehazeResponse:
        validate_imageDehaze_params(params)
        mapped = map_params(params, ImageDehazeParamMap)
        return await self._requester.request('POST', '/api/image/enhance/image-defogging', body=mapped, multipart=True)

    async def imageLosslessEnlargement(self, params: ImageLosslessEnlargementParams) -> ImageLosslessEnlargementResponse:
        validate_imageLosslessEnlargement_params(params)
        mapped = map_params(params, ImageLosslessEnlargementParamMap)
        return await self._requester.request('POST', '/api/image/enhance/image-lossless-enlargement', body=mapped, multipart=True)

    async def imageClarityEnhancement(self, params: ImageClarityEnhancementParams) -> ImageClarityEnhancementResponse:
        validate_imageClarityEnhancement_params(params)
        mapped = map_params(params, ImageClarityEnhancementParamMap)
        return await self._requester.request('POST', '/api/image/enhance/image-sharpness-enhancement', body=mapped, multipart=True)

    async def imageDistortionCorrection(self, params: ImageDistortionCorrectionParams) -> ImageDistortionCorrectionResponse:
        validate_imageDistortionCorrection_params(params)
        mapped = map_params(params, ImageDistortionCorrectionParamMap)
        return await self._requester.request('POST', '/api/image/enhance/stretch-image-recovery', body=mapped, multipart=True)

    async def imageCompositionAestheticsScore(self, params: ImageCompositionAestheticsScoreParams) -> ImageCompositionAestheticsScoreResponse:
        validate_imageCompositionAestheticsScore_params(params)
        mapped = map_params(params, ImageCompositionAestheticsScoreParamMap)
        return await self._requester.request('POST', '/api/image/rating/image-composition-aesthetics-scoring', body=mapped, multipart=True)

    async def imageExposureRating(self, params: ImageExposureRatingParams) -> ImageExposureRatingResponse:
        validate_imageExposureRating_params(params)
        mapped = map_params(params, ImageExposureRatingParamMap)
        return await self._requester.request('POST', '/api/image/rating/image-exposure-score', body=mapped, multipart=True)
