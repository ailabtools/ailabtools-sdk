use crate::generated::params::*;
use crate::generated::responses::*;
use crate::requester::Requester;
use crate::Result;
use reqwest::Method;

#[derive(Clone)]
pub struct ImageApi { requester: Requester }
impl ImageApi {
    pub(crate) fn new(requester: Requester) -> Self { Self { requester } }
    pub async fn image_querying_async_task_results(&self, params: ImageQueryingAsyncTaskResultsParams) -> Result<ImageQueryingAsyncTaskResultsResponse> {
        self.requester.request(Method::GET, "/api/image/asyn-task-results", params).await
    }
    pub async fn image_ai_image_extender(&self, params: ImageAIImageExtenderParams) -> Result<ImageAIImageExtenderResponse> {
        self.requester.request(Method::POST, "/api/image/editing/ai-image-extender", params).await
    }
    pub async fn image_ai_object_replacer(&self, params: ImageAIObjectReplacerParams) -> Result<ImageAIObjectReplacerResponse> {
        self.requester.request(Method::POST, "/api/image/editing/ai-object-replacer", params).await
    }
    pub async fn image_ai_image_cropping(&self, params: ImageAIImageCroppingParams) -> Result<ImageAIImageCroppingResponse> {
        self.requester.request(Method::POST, "/api/image/editing/image-cropping", params).await
    }
    pub async fn image_erasure(&self, params: ImageErasureParams) -> Result<ImageErasureResponse> {
        self.requester.request(Method::POST, "/api/image/editing/image-erase", params).await
    }
    pub async fn image_invisible_image_watermark(&self, params: ImageInvisibleImageWatermarkParams) -> Result<ImageInvisibleImageWatermarkResponse> {
        self.requester.request(Method::POST, "/api/image/editing/image-invisible-image-watermark", params).await
    }
    pub async fn image_invisible_text_watermark(&self, params: ImageInvisibleTextWatermarkParams) -> Result<ImageInvisibleTextWatermarkResponse> {
        self.requester.request(Method::POST, "/api/image/editing/image-invisible-text-watermarking", params).await
    }
    pub async fn image_intelligent_composition(&self, params: ImageIntelligentCompositionParams) -> Result<ImageIntelligentCompositionResponse> {
        self.requester.request(Method::POST, "/api/image/editing/intelligent-composition", params).await
    }
    pub async fn image_photo_editing(&self, params: ImagePhotoEditingParams) -> Result<ImagePhotoEditingResponse> {
        self.requester.request(Method::POST, "/api/image/editing/photo-retouching", params).await
    }
    pub async fn image_remove_objects(&self, params: ImageRemoveObjectsParams) -> Result<ImageRemoveObjectsResponse> {
        self.requester.request(Method::POST, "/api/image/editing/remove-objects", params).await
    }
    pub async fn image_remove_objects_advanced(&self, params: ImageRemoveObjectsAdvancedParams) -> Result<ImageRemoveObjectsAdvancedResponse> {
        self.requester.request(Method::POST, "/api/image/editing/remove-objects-advanced", params).await
    }
    pub async fn image_remove_objects_pro(&self, params: ImageRemoveObjectsProParams) -> Result<ImageRemoveObjectsProResponse> {
        self.requester.request(Method::POST, "/api/image/editing/remove-objects-pro", params).await
    }
    pub async fn image_ai_cartoon_generator(&self, params: ImageAICartoonGeneratorParams) -> Result<ImageAICartoonGeneratorResponse> {
        self.requester.request(Method::POST, "/api/image/effects/ai-anime-generator", params).await
    }
    pub async fn image_coloring(&self, params: ImageColoringParams) -> Result<ImageColoringResponse> {
        self.requester.request(Method::POST, "/api/image/effects/image-colorization", params).await
    }
    pub async fn image_style_transfer(&self, params: ImageStyleTransferParams) -> Result<ImageStyleTransferResponse> {
        self.requester.request(Method::POST, "/api/image/effects/image-style-conversion", params).await
    }
    pub async fn image_style_migration(&self, params: ImageStyleMigrationParams) -> Result<ImageStyleMigrationResponse> {
        self.requester.request(Method::POST, "/api/image/effects/image-style-migration", params).await
    }
    pub async fn image_color_enhancement(&self, params: ImageColorEnhancementParams) -> Result<ImageColorEnhancementResponse> {
        self.requester.request(Method::POST, "/api/image/enhance/image-color-enhancement", params).await
    }
    pub async fn image_contrast_enhancement(&self, params: ImageContrastEnhancementParams) -> Result<ImageContrastEnhancementResponse> {
        self.requester.request(Method::POST, "/api/image/enhance/image-contrast-enhancement", params).await
    }
    pub async fn image_dehaze(&self, params: ImageDehazeParams) -> Result<ImageDehazeResponse> {
        self.requester.request(Method::POST, "/api/image/enhance/image-defogging", params).await
    }
    pub async fn image_lossless_enlargement(&self, params: ImageLosslessEnlargementParams) -> Result<ImageLosslessEnlargementResponse> {
        self.requester.request(Method::POST, "/api/image/enhance/image-lossless-enlargement", params).await
    }
    pub async fn image_clarity_enhancement(&self, params: ImageClarityEnhancementParams) -> Result<ImageClarityEnhancementResponse> {
        self.requester.request(Method::POST, "/api/image/enhance/image-sharpness-enhancement", params).await
    }
    pub async fn image_distortion_correction(&self, params: ImageDistortionCorrectionParams) -> Result<ImageDistortionCorrectionResponse> {
        self.requester.request(Method::POST, "/api/image/enhance/stretch-image-recovery", params).await
    }
    pub async fn image_composition_aesthetics_score(&self, params: ImageCompositionAestheticsScoreParams) -> Result<ImageCompositionAestheticsScoreResponse> {
        self.requester.request(Method::POST, "/api/image/rating/image-composition-aesthetics-scoring", params).await
    }
    pub async fn image_exposure_rating(&self, params: ImageExposureRatingParams) -> Result<ImageExposureRatingResponse> {
        self.requester.request(Method::POST, "/api/image/rating/image-exposure-score", params).await
    }
    pub async fn image_ai_nail_art(&self, params: ImageAINailArtParams) -> Result<ImageAINailArtResponse> {
        self.requester.request(Method::POST, "/api/image/editing/ai-nail-art", params).await
    }
    pub async fn image_ai_nail_art_pro(&self, params: ImageAINailArtProParams) -> Result<ImageAINailArtProResponse> {
        self.requester.request(Method::POST, "/api/image/editing/ai-nail-art-pro", params).await
    }
    pub async fn image_ai_photography(&self, params: ImageAIPhotographyParams) -> Result<ImageAIPhotographyResponse> {
        self.requester.request(Method::POST, "/api/image/effects/ai-photography", params).await
    }
    pub async fn image_ai_emoji_generator(&self, params: ImageAIEmojiGeneratorParams) -> Result<ImageAIEmojiGeneratorResponse> {
        self.requester.request(Method::POST, "/api/image/effects/photo-to-emoji-grid", params).await
    }
    pub async fn image_photo_to_coloring_page(&self, params: ImagePhotoToColoringPageParams) -> Result<ImagePhotoToColoringPageResponse> {
        self.requester.request(Method::POST, "/api/image/effects/photo-to-line-art", params).await
    }
    pub async fn image_ai_flower_wallpaper(&self, params: ImageAIFlowerWallpaperParams) -> Result<ImageAIFlowerWallpaperResponse> {
        self.requester.request(Method::POST, "/api/image/generation/ai-flower-wallpaper", params).await
    }
    pub async fn upscale(&self, params: ImageLosslessEnlargementParams) -> Result<ImageLosslessEnlargementResponse> { self.image_lossless_enlargement(params).await }
    pub async fn remove_objects(&self, params: ImageRemoveObjectsParams) -> Result<ImageRemoveObjectsResponse> { self.image_remove_objects(params).await }
}
