use crate::params::{add_file, add_optional_file, add_optional_text, add_text, ApiParams};
use crate::{FileInput, Result};
use reqwest::multipart::Form;

#[derive(Debug, Clone)]
pub struct CommonQueryAsyncTaskResultParams {
    pub task_id: String,
}
impl CommonQueryAsyncTaskResultParams {
    pub fn new(task_id: String) -> Self {
        Self {
            task_id: task_id,
        }
    }
}
impl ApiParams for CommonQueryAsyncTaskResultParams {
    fn query_pairs(&self) -> Vec<(&'static str, String)> {
        let mut query = Vec::new();
        query.push(("task_id", self.task_id.to_string()));
        query
    }
}

#[derive(Debug, Clone)]
pub struct CommonQueryCreditsParams {
}
impl CommonQueryCreditsParams {
    pub fn new() -> Self {
        Self {
        }
    }
}
impl ApiParams for CommonQueryCreditsParams {
}

#[derive(Debug, Clone)]
pub struct CutoutClothingBackgroundRemovalParams {
    pub image: FileInput,
    pub out_mode: Option<i64>,
    pub cloth_class: Option<String>,
    pub return_form: Option<String>,
}
impl CutoutClothingBackgroundRemovalParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            out_mode: None,
            cloth_class: None,
            return_form: None,
        }
    }
}
impl ApiParams for CutoutClothingBackgroundRemovalParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "out_mode", &self.out_mode);
        form = add_optional_text(form, "cloth_class", &self.cloth_class);
        form = add_optional_text(form, "return_form", &self.return_form);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct CutoutProductBackgroundRemovalParams {
    pub image: FileInput,
    pub return_form: Option<String>,
}
impl CutoutProductBackgroundRemovalParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            return_form: None,
        }
    }
}
impl ApiParams for CutoutProductBackgroundRemovalParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "return_form", &self.return_form);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct CutoutFoodBackgroundRemovalParams {
    pub image: FileInput,
    pub return_form: Option<String>,
}
impl CutoutFoodBackgroundRemovalParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            return_form: None,
        }
    }
}
impl ApiParams for CutoutFoodBackgroundRemovalParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "return_form", &self.return_form);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct CutoutUniversalBackgroundRemovalParams {
    pub image: FileInput,
    pub return_form: Option<String>,
}
impl CutoutUniversalBackgroundRemovalParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            return_form: None,
        }
    }
}
impl ApiParams for CutoutUniversalBackgroundRemovalParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "return_form", &self.return_form);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct CutoutAvatarExtractionParams {
    pub image: FileInput,
    pub return_form: Option<String>,
}
impl CutoutAvatarExtractionParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            return_form: None,
        }
    }
}
impl ApiParams for CutoutAvatarExtractionParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "return_form", &self.return_form);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct CutoutHairExtractionParams {
    pub image: FileInput,
}
impl CutoutHairExtractionParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for CutoutHairExtractionParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct CutoutHumanBackgroundRemovalParams {
    pub image: FileInput,
    pub return_form: Option<String>,
}
impl CutoutHumanBackgroundRemovalParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            return_form: None,
        }
    }
}
impl ApiParams for CutoutHumanBackgroundRemovalParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "return_form", &self.return_form);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageQueryingAsyncTaskResultsParams {
    pub job_id: String,
    pub type_value: String,
}
impl ImageQueryingAsyncTaskResultsParams {
    pub fn new(job_id: String, type_value: String) -> Self {
        Self {
            job_id: job_id,
            type_value: type_value,
        }
    }
}
impl ApiParams for ImageQueryingAsyncTaskResultsParams {
    fn query_pairs(&self) -> Vec<(&'static str, String)> {
        let mut query = Vec::new();
        query.push(("job_id", self.job_id.to_string()));
        query.push(("type", self.type_value.to_string()));
        query
    }
}

#[derive(Debug, Clone)]
pub struct ImageAIImageExtenderParams {
    pub custom_prompt: Option<String>,
    pub steps: Option<i64>,
    pub strength: Option<f64>,
    pub scale: Option<f64>,
    pub seed: Option<i64>,
    pub max_height: Option<i64>,
    pub max_width: Option<i64>,
    pub image: FileInput,
    pub top: Option<f64>,
    pub bottom: Option<f64>,
    pub left: Option<f64>,
    pub right: Option<f64>,
    pub mask: Option<FileInput>,
}
impl ImageAIImageExtenderParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            custom_prompt: None,
            steps: None,
            strength: None,
            scale: None,
            seed: None,
            max_height: None,
            max_width: None,
            image: image,
            top: None,
            bottom: None,
            left: None,
            right: None,
            mask: None,
        }
    }
}
impl ApiParams for ImageAIImageExtenderParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_optional_text(form, "custom_prompt", &self.custom_prompt);
        form = add_optional_text(form, "steps", &self.steps);
        form = add_optional_text(form, "strength", &self.strength);
        form = add_optional_text(form, "scale", &self.scale);
        form = add_optional_text(form, "seed", &self.seed);
        form = add_optional_text(form, "max_height", &self.max_height);
        form = add_optional_text(form, "max_width", &self.max_width);
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "top", &self.top);
        form = add_optional_text(form, "bottom", &self.bottom);
        form = add_optional_text(form, "left", &self.left);
        form = add_optional_text(form, "right", &self.right);
        form = add_optional_file(form, "mask", &self.mask)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageAIObjectReplacerParams {
    pub image: FileInput,
    pub mask: FileInput,
    pub custom_prompt: Option<String>,
    pub steps: Option<i64>,
    pub scale: Option<f64>,
    pub seed: Option<i64>,
}
impl ImageAIObjectReplacerParams {
    pub fn new(image: FileInput, mask: FileInput) -> Self {
        Self {
            image: image,
            mask: mask,
            custom_prompt: None,
            steps: None,
            scale: None,
            seed: None,
        }
    }
}
impl ApiParams for ImageAIObjectReplacerParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_file(form, "mask", &self.mask)?;
        form = add_optional_text(form, "custom_prompt", &self.custom_prompt);
        form = add_optional_text(form, "steps", &self.steps);
        form = add_optional_text(form, "scale", &self.scale);
        form = add_optional_text(form, "seed", &self.seed);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageAIImageCroppingParams {
    pub image: FileInput,
    pub width: i64,
    pub height: i64,
}
impl ImageAIImageCroppingParams {
    pub fn new(image: FileInput, width: i64, height: i64) -> Self {
        Self {
            image: image,
            width: width,
            height: height,
        }
    }
}
impl ApiParams for ImageAIImageCroppingParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "width", &self.width);
        form = add_text(form, "height", &self.height);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageErasureParams {
    pub image: FileInput,
    pub user_mask: FileInput,
}
impl ImageErasureParams {
    pub fn new(image: FileInput, user_mask: FileInput) -> Self {
        Self {
            image: image,
            user_mask: user_mask,
        }
    }
}
impl ApiParams for ImageErasureParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_file(form, "user_mask", &self.user_mask)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageInvisibleImageWatermarkParams {
    pub function_type: String,
    pub origin_image: Option<FileInput>,
    pub logo: Option<FileInput>,
    pub watermark_image: Option<FileInput>,
    pub output_file_type: Option<String>,
    pub quality_factor: Option<i64>,
}
impl ImageInvisibleImageWatermarkParams {
    pub fn new(function_type: String) -> Self {
        Self {
            function_type: function_type,
            origin_image: None,
            logo: None,
            watermark_image: None,
            output_file_type: None,
            quality_factor: None,
        }
    }
}
impl ApiParams for ImageInvisibleImageWatermarkParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_text(form, "function_type", &self.function_type);
        form = add_optional_file(form, "origin_image", &self.origin_image)?;
        form = add_optional_file(form, "logo", &self.logo)?;
        form = add_optional_file(form, "watermark_image", &self.watermark_image)?;
        form = add_optional_text(form, "output_file_type", &self.output_file_type);
        form = add_optional_text(form, "quality_factor", &self.quality_factor);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageInvisibleTextWatermarkParams {
    pub function_type: String,
    pub origin_image: Option<FileInput>,
    pub text: Option<String>,
    pub watermark_image: Option<FileInput>,
    pub output_file_type: Option<String>,
    pub quality_factor: Option<i64>,
}
impl ImageInvisibleTextWatermarkParams {
    pub fn new(function_type: String) -> Self {
        Self {
            function_type: function_type,
            origin_image: None,
            text: None,
            watermark_image: None,
            output_file_type: None,
            quality_factor: None,
        }
    }
}
impl ApiParams for ImageInvisibleTextWatermarkParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_text(form, "function_type", &self.function_type);
        form = add_optional_file(form, "origin_image", &self.origin_image)?;
        form = add_optional_text(form, "text", &self.text);
        form = add_optional_file(form, "watermark_image", &self.watermark_image)?;
        form = add_optional_text(form, "output_file_type", &self.output_file_type);
        form = add_optional_text(form, "quality_factor", &self.quality_factor);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageIntelligentCompositionParams {
    pub image: FileInput,
    pub num_boxes: Option<i64>,
}
impl ImageIntelligentCompositionParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            num_boxes: None,
        }
    }
}
impl ApiParams for ImageIntelligentCompositionParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "num_boxes", &self.num_boxes);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImagePhotoEditingParams {
    pub image: FileInput,
    pub style: FileInput,
}
impl ImagePhotoEditingParams {
    pub fn new(image: FileInput, style: FileInput) -> Self {
        Self {
            image: image,
            style: style,
        }
    }
}
impl ApiParams for ImagePhotoEditingParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_file(form, "style", &self.style)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageRemoveObjectsParams {
    pub image: FileInput,
    pub mask: FileInput,
}
impl ImageRemoveObjectsParams {
    pub fn new(image: FileInput, mask: FileInput) -> Self {
        Self {
            image: image,
            mask: mask,
        }
    }
}
impl ApiParams for ImageRemoveObjectsParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_file(form, "mask", &self.mask)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageRemoveObjectsAdvancedParams {
    pub image: FileInput,
    pub mask: FileInput,
    pub steps: Option<i64>,
    pub strength: Option<f64>,
    pub scale: Option<f64>,
    pub seed: Option<i64>,
    pub dilate_size: Option<i64>,
    pub quality: Option<String>,
}
impl ImageRemoveObjectsAdvancedParams {
    pub fn new(image: FileInput, mask: FileInput) -> Self {
        Self {
            image: image,
            mask: mask,
            steps: None,
            strength: None,
            scale: None,
            seed: None,
            dilate_size: None,
            quality: None,
        }
    }
}
impl ApiParams for ImageRemoveObjectsAdvancedParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_file(form, "mask", &self.mask)?;
        form = add_optional_text(form, "steps", &self.steps);
        form = add_optional_text(form, "strength", &self.strength);
        form = add_optional_text(form, "scale", &self.scale);
        form = add_optional_text(form, "seed", &self.seed);
        form = add_optional_text(form, "dilate_size", &self.dilate_size);
        form = add_optional_text(form, "quality", &self.quality);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageRemoveObjectsProParams {
    pub image: FileInput,
    pub mask: FileInput,
}
impl ImageRemoveObjectsProParams {
    pub fn new(image: FileInput, mask: FileInput) -> Self {
        Self {
            image: image,
            mask: mask,
        }
    }
}
impl ApiParams for ImageRemoveObjectsProParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_file(form, "mask", &self.mask)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageAICartoonGeneratorParams {
    pub task_type: String,
    pub image: FileInput,
    pub index: i64,
}
impl ImageAICartoonGeneratorParams {
    pub fn new(task_type: String, image: FileInput, index: i64) -> Self {
        Self {
            task_type: task_type,
            image: image,
            index: index,
        }
    }
}
impl ApiParams for ImageAICartoonGeneratorParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_text(form, "task_type", &self.task_type);
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "index", &self.index);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageColoringParams {
    pub image: FileInput,
}
impl ImageColoringParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for ImageColoringParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageStyleTransferParams {
    pub image: FileInput,
    pub option: String,
}
impl ImageStyleTransferParams {
    pub fn new(image: FileInput, option: String) -> Self {
        Self {
            image: image,
            option: option,
        }
    }
}
impl ApiParams for ImageStyleTransferParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "option", &self.option);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageStyleMigrationParams {
    pub style: FileInput,
    pub major: FileInput,
}
impl ImageStyleMigrationParams {
    pub fn new(style: FileInput, major: FileInput) -> Self {
        Self {
            style: style,
            major: major,
        }
    }
}
impl ApiParams for ImageStyleMigrationParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "style", &self.style)?;
        form = add_file(form, "major", &self.major)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageColorEnhancementParams {
    pub image: FileInput,
    pub output_format: String,
    pub mode: String,
}
impl ImageColorEnhancementParams {
    pub fn new(image: FileInput, output_format: String, mode: String) -> Self {
        Self {
            image: image,
            output_format: output_format,
            mode: mode,
        }
    }
}
impl ApiParams for ImageColorEnhancementParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "output_format", &self.output_format);
        form = add_text(form, "mode", &self.mode);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageContrastEnhancementParams {
    pub image: FileInput,
}
impl ImageContrastEnhancementParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for ImageContrastEnhancementParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageDehazeParams {
    pub image: FileInput,
}
impl ImageDehazeParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for ImageDehazeParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageLosslessEnlargementParams {
    pub image: FileInput,
    pub upscale_factor: Option<i64>,
    pub mode: Option<String>,
    pub output_format: Option<String>,
    pub output_quality: Option<i64>,
}
impl ImageLosslessEnlargementParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            upscale_factor: None,
            mode: None,
            output_format: None,
            output_quality: None,
        }
    }
}
impl ApiParams for ImageLosslessEnlargementParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "upscale_factor", &self.upscale_factor);
        form = add_optional_text(form, "mode", &self.mode);
        form = add_optional_text(form, "output_format", &self.output_format);
        form = add_optional_text(form, "output_quality", &self.output_quality);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageClarityEnhancementParams {
    pub image: FileInput,
}
impl ImageClarityEnhancementParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for ImageClarityEnhancementParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageDistortionCorrectionParams {
    pub image: FileInput,
}
impl ImageDistortionCorrectionParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for ImageDistortionCorrectionParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageCompositionAestheticsScoreParams {
    pub image: FileInput,
}
impl ImageCompositionAestheticsScoreParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for ImageCompositionAestheticsScoreParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageExposureRatingParams {
    pub image: FileInput,
}
impl ImageExposureRatingParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for ImageExposureRatingParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitFaceAnalyzerParams {
    pub image: FileInput,
    pub max_face_num: Option<i64>,
    pub face_attributes_type: Option<String>,
    pub need_rotate_detection: Option<i64>,
}
impl PortraitFaceAnalyzerParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            max_face_num: None,
            face_attributes_type: None,
            need_rotate_detection: None,
        }
    }
}
impl ApiParams for PortraitFaceAnalyzerParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "max_face_num", &self.max_face_num);
        form = add_optional_text(form, "face_attributes_type", &self.face_attributes_type);
        form = add_optional_text(form, "need_rotate_detection", &self.need_rotate_detection);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitFaceAnalyzerAdvancedParams {
    pub image: FileInput,
}
impl PortraitFaceAnalyzerAdvancedParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitFaceAnalyzerAdvancedParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitFacialLandmarksParams {
    pub image: FileInput,
    pub max_face_num: Option<i64>,
    pub face_field: Option<String>,
}
impl PortraitFacialLandmarksParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            max_face_num: None,
            face_field: None,
        }
    }
}
impl ApiParams for PortraitFacialLandmarksParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "max_face_num", &self.max_face_num);
        form = add_optional_text(form, "face_field", &self.face_field);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitSkinAnalysisBasicParams {
    pub image: FileInput,
}
impl PortraitSkinAnalysisBasicParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitSkinAnalysisBasicParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitSkinAnalysisAdvancedParams {
    pub image: FileInput,
    pub face_quality_control: Option<i64>,
    pub return_rect_confidence: Option<i64>,
    pub return_maps: Option<String>,
}
impl PortraitSkinAnalysisAdvancedParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            face_quality_control: None,
            return_rect_confidence: None,
            return_maps: None,
        }
    }
}
impl ApiParams for PortraitSkinAnalysisAdvancedParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "face_quality_control", &self.face_quality_control);
        form = add_optional_text(form, "return_rect_confidence", &self.return_rect_confidence);
        form = add_optional_text(form, "return_maps", &self.return_maps);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitSkinAnalysisProfessionalParams {
    pub image: FileInput,
    pub left_side_image: Option<FileInput>,
    pub right_side_image: Option<FileInput>,
    pub return_maps: Option<String>,
    pub return_marks: Option<String>,
    pub roi_outline_color: Option<String>,
    pub return_side_results: Option<String>,
}
impl PortraitSkinAnalysisProfessionalParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            left_side_image: None,
            right_side_image: None,
            return_maps: None,
            return_marks: None,
            roi_outline_color: None,
            return_side_results: None,
        }
    }
}
impl ApiParams for PortraitSkinAnalysisProfessionalParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_file(form, "left_side_image", &self.left_side_image)?;
        form = add_optional_file(form, "right_side_image", &self.right_side_image)?;
        form = add_optional_text(form, "return_maps", &self.return_maps);
        form = add_optional_text(form, "return_marks", &self.return_marks);
        form = add_optional_text(form, "roi_outline_color", &self.roi_outline_color);
        form = add_optional_text(form, "return_side_results", &self.return_side_results);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitSkinDiseaseDetectionParams {
    pub image: FileInput,
}
impl PortraitSkinDiseaseDetectionParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitSkinDiseaseDetectionParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitTryOnClothesParams {
    pub task_type: String,
    pub person_image: FileInput,
    pub clothes_image: FileInput,
    pub clothes_type: String,
}
impl PortraitTryOnClothesParams {
    pub fn new(task_type: String, person_image: FileInput, clothes_image: FileInput, clothes_type: String) -> Self {
        Self {
            task_type: task_type,
            person_image: person_image,
            clothes_image: clothes_image,
            clothes_type: clothes_type,
        }
    }
}
impl ApiParams for PortraitTryOnClothesParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_text(form, "task_type", &self.task_type);
        form = add_file(form, "person_image", &self.person_image)?;
        form = add_file(form, "clothes_image", &self.clothes_image)?;
        form = add_text(form, "clothes_type", &self.clothes_type);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitTryOnClothesProParams {
    pub task_type: String,
    pub person_image: FileInput,
    pub top_garment: FileInput,
    pub bottom_garment: Option<FileInput>,
    pub resolution: Option<i64>,
    pub restore_face: Option<bool>,
}
impl PortraitTryOnClothesProParams {
    pub fn new(task_type: String, person_image: FileInput, top_garment: FileInput) -> Self {
        Self {
            task_type: task_type,
            person_image: person_image,
            top_garment: top_garment,
            bottom_garment: None,
            resolution: None,
            restore_face: None,
        }
    }
}
impl ApiParams for PortraitTryOnClothesProParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_text(form, "task_type", &self.task_type);
        form = add_file(form, "person_image", &self.person_image)?;
        form = add_file(form, "top_garment", &self.top_garment)?;
        form = add_optional_file(form, "bottom_garment", &self.bottom_garment)?;
        form = add_optional_text(form, "resolution", &self.resolution);
        form = add_optional_text(form, "restore_face", &self.restore_face);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitFacialBlurringParams {
    pub image: FileInput,
}
impl PortraitFacialBlurringParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitFacialBlurringParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitExpressionEditingParams {
    pub image_target: FileInput,
    pub service_choice: i64,
}
impl PortraitExpressionEditingParams {
    pub fn new(image_target: FileInput, service_choice: i64) -> Self {
        Self {
            image_target: image_target,
            service_choice: service_choice,
        }
    }
}
impl ApiParams for PortraitExpressionEditingParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image_target", &self.image_target)?;
        form = add_text(form, "service_choice", &self.service_choice);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitFaceRestorationEnhancementParams {
    pub image: FileInput,
}
impl PortraitFaceRestorationEnhancementParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitFaceRestorationEnhancementParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitFaceAttributeEditingParams {
    pub image: FileInput,
    pub action_type: String,
    pub quality_control: Option<String>,
    pub face_location: Option<String>,
}
impl PortraitFaceAttributeEditingParams {
    pub fn new(image: FileInput, action_type: String) -> Self {
        Self {
            image: image,
            action_type: action_type,
            quality_control: None,
            face_location: None,
        }
    }
}
impl ApiParams for PortraitFaceAttributeEditingParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "action_type", &self.action_type);
        form = add_optional_text(form, "quality_control", &self.quality_control);
        form = add_optional_text(form, "face_location", &self.face_location);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitFacialBeautificationParams {
    pub image: FileInput,
    pub sharp: f64,
    pub smooth: f64,
    pub white: f64,
}
impl PortraitFacialBeautificationParams {
    pub fn new(image: FileInput, sharp: f64, smooth: f64, white: f64) -> Self {
        Self {
            image: image,
            sharp: sharp,
            smooth: smooth,
            white: white,
        }
    }
}
impl ApiParams for PortraitFacialBeautificationParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "sharp", &self.sharp);
        form = add_text(form, "smooth", &self.smooth);
        form = add_text(form, "white", &self.white);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitFacialBeautificationAdvancedParams {
    pub image: FileInput,
    pub whitening: Option<i64>,
    pub smoothing: Option<i64>,
    pub face_lifting: Option<i64>,
    pub eye_enlarging: Option<i64>,
}
impl PortraitFacialBeautificationAdvancedParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            whitening: None,
            smoothing: None,
            face_lifting: None,
            eye_enlarging: None,
        }
    }
}
impl ApiParams for PortraitFacialBeautificationAdvancedParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "whitening", &self.whitening);
        form = add_optional_text(form, "smoothing", &self.smoothing);
        form = add_optional_text(form, "face_lifting", &self.face_lifting);
        form = add_optional_text(form, "eye_enlarging", &self.eye_enlarging);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitFacialBeautificationProParams {
    pub image: FileInput,
    pub whitening: Option<i64>,
    pub smoothing: Option<i64>,
    pub thinface: Option<i64>,
    pub shrink_face: Option<i64>,
    pub enlarge_eye: Option<i64>,
    pub remove_eyebrow: Option<i64>,
    pub filter_type: Option<i64>,
    pub task_type: Option<String>,
}
impl PortraitFacialBeautificationProParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            whitening: None,
            smoothing: None,
            thinface: None,
            shrink_face: None,
            enlarge_eye: None,
            remove_eyebrow: None,
            filter_type: None,
            task_type: None,
        }
    }
}
impl ApiParams for PortraitFacialBeautificationProParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "whitening", &self.whitening);
        form = add_optional_text(form, "smoothing", &self.smoothing);
        form = add_optional_text(form, "thinface", &self.thinface);
        form = add_optional_text(form, "shrink_face", &self.shrink_face);
        form = add_optional_text(form, "enlarge_eye", &self.enlarge_eye);
        form = add_optional_text(form, "remove_eyebrow", &self.remove_eyebrow);
        form = add_optional_text(form, "filter_type", &self.filter_type);
        form = add_optional_text(form, "task_type", &self.task_type);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitFacialFiltersParams {
    pub image: FileInput,
    pub resource_type: String,
    pub strength: f64,
}
impl PortraitFacialFiltersParams {
    pub fn new(image: FileInput, resource_type: String, strength: f64) -> Self {
        Self {
            image: image,
            resource_type: resource_type,
            strength: strength,
        }
    }
}
impl ApiParams for PortraitFacialFiltersParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "resource_type", &self.resource_type);
        form = add_text(form, "strength", &self.strength);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitFaceFusionParams {
    pub image_target: FileInput,
    pub image_template: FileInput,
    pub source_similarity: Option<f64>,
}
impl PortraitFaceFusionParams {
    pub fn new(image_target: FileInput, image_template: FileInput) -> Self {
        Self {
            image_target: image_target,
            image_template: image_template,
            source_similarity: None,
        }
    }
}
impl ApiParams for PortraitFaceFusionParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image_target", &self.image_target)?;
        form = add_file(form, "image_template", &self.image_template)?;
        form = add_optional_text(form, "source_similarity", &self.source_similarity);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitHairstyleEditingParams {
    pub image_target: FileInput,
    pub hair_type: Option<i64>,
}
impl PortraitHairstyleEditingParams {
    pub fn new(image_target: FileInput) -> Self {
        Self {
            image_target: image_target,
            hair_type: None,
        }
    }
}
impl ApiParams for PortraitHairstyleEditingParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image_target", &self.image_target)?;
        form = add_optional_text(form, "hair_type", &self.hair_type);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitHairstyleEditingProParams {
    pub task_type: String,
    pub image: FileInput,
    pub hair_style: String,
    pub color: Option<String>,
    pub image_size: Option<i64>,
    pub mask: Option<FileInput>,
    pub bangs: Option<i64>,
    pub mode: Option<i64>,
    pub reference: Option<i64>,
}
impl PortraitHairstyleEditingProParams {
    pub fn new(task_type: String, image: FileInput, hair_style: String) -> Self {
        Self {
            task_type: task_type,
            image: image,
            hair_style: hair_style,
            color: None,
            image_size: None,
            mask: None,
            bangs: None,
            mode: None,
            reference: None,
        }
    }
}
impl ApiParams for PortraitHairstyleEditingProParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_text(form, "task_type", &self.task_type);
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "hair_style", &self.hair_style);
        form = add_optional_text(form, "color", &self.color);
        form = add_optional_text(form, "image_size", &self.image_size);
        form = add_optional_file(form, "mask", &self.mask)?;
        form = add_optional_text(form, "bangs", &self.bangs);
        form = add_optional_text(form, "mode", &self.mode);
        form = add_optional_text(form, "reference", &self.reference);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitLipsColorChangerParams {
    pub image: FileInput,
    pub lip_color_infos: String,
}
impl PortraitLipsColorChangerParams {
    pub fn new(image: FileInput, lip_color_infos: String) -> Self {
        Self {
            image: image,
            lip_color_infos: lip_color_infos,
        }
    }
}
impl ApiParams for PortraitLipsColorChangerParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "lip_color_infos", &self.lip_color_infos);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitLivePhotosParams {
    pub image_target: FileInput,
    pub type_value: Option<i64>,
}
impl PortraitLivePhotosParams {
    pub fn new(image_target: FileInput) -> Self {
        Self {
            image_target: image_target,
            type_value: None,
        }
    }
}
impl ApiParams for PortraitLivePhotosParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image_target", &self.image_target)?;
        form = add_optional_text(form, "type", &self.type_value);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitCartoonYourselfParams {
    pub image: FileInput,
    pub type_value: String,
}
impl PortraitCartoonYourselfParams {
    pub fn new(image: FileInput, type_value: String) -> Self {
        Self {
            image: image,
            type_value: type_value,
        }
    }
}
impl ApiParams for PortraitCartoonYourselfParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "type", &self.type_value);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitIntelligentBeautificationParams {
    pub image_target: FileInput,
    pub multi_face: Option<String>,
    pub beauty_level: Option<f64>,
    pub task_type: Option<String>,
}
impl PortraitIntelligentBeautificationParams {
    pub fn new(image_target: FileInput) -> Self {
        Self {
            image_target: image_target,
            multi_face: None,
            beauty_level: None,
            task_type: None,
        }
    }
}
impl ApiParams for PortraitIntelligentBeautificationParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image_target", &self.image_target)?;
        form = add_optional_text(form, "multi_face", &self.multi_face);
        form = add_optional_text(form, "beauty_level", &self.beauty_level);
        form = add_optional_text(form, "task_type", &self.task_type);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitIntelligentFaceSlimmingParams {
    pub image: FileInput,
    pub slim_degree: Option<f64>,
}
impl PortraitIntelligentFaceSlimmingParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            slim_degree: None,
        }
    }
}
impl ApiParams for PortraitIntelligentFaceSlimmingParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "slim_degree", &self.slim_degree);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitIntelligentSkinRetouchingParams {
    pub image: FileInput,
    pub retouch_degree: Option<f64>,
    pub whitening_degree: Option<f64>,
}
impl PortraitIntelligentSkinRetouchingParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            retouch_degree: None,
            whitening_degree: None,
        }
    }
}
impl ApiParams for PortraitIntelligentSkinRetouchingParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "retouch_degree", &self.retouch_degree);
        form = add_optional_text(form, "whitening_degree", &self.whitening_degree);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitTryOnClothesRefinerParams {
    pub task_type: String,
    pub person_image: FileInput,
    pub top_garment: FileInput,
    pub coarse_image: FileInput,
    pub gender: String,
    pub bottom_garment: Option<FileInput>,
}
impl PortraitTryOnClothesRefinerParams {
    pub fn new(task_type: String, person_image: FileInput, top_garment: FileInput, coarse_image: FileInput, gender: String) -> Self {
        Self {
            task_type: task_type,
            person_image: person_image,
            top_garment: top_garment,
            coarse_image: coarse_image,
            gender: gender,
            bottom_garment: None,
        }
    }
}
impl ApiParams for PortraitTryOnClothesRefinerParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_text(form, "task_type", &self.task_type);
        form = add_file(form, "person_image", &self.person_image)?;
        form = add_file(form, "top_garment", &self.top_garment)?;
        form = add_file(form, "coarse_image", &self.coarse_image)?;
        form = add_text(form, "gender", &self.gender);
        form = add_optional_file(form, "bottom_garment", &self.bottom_garment)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct CutoutHDUniversalBackgroundRemovalParams {
    pub image: FileInput,
}
impl CutoutHDUniversalBackgroundRemovalParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for CutoutHDUniversalBackgroundRemovalParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct CutoutHDHumanBodyBackgroundRemovalParams {
    pub image: FileInput,
}
impl CutoutHDHumanBodyBackgroundRemovalParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for CutoutHDHumanBodyBackgroundRemovalParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageAINailArtParams {
    pub image: FileInput,
    pub nail_name: String,
    pub nail_desc: String,
}
impl ImageAINailArtParams {
    pub fn new(image: FileInput, nail_name: String, nail_desc: String) -> Self {
        Self {
            image: image,
            nail_name: nail_name,
            nail_desc: nail_desc,
        }
    }
}
impl ApiParams for ImageAINailArtParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "nail_name", &self.nail_name);
        form = add_text(form, "nail_desc", &self.nail_desc);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageAINailArtProParams {
    pub image: FileInput,
    pub reference_image: FileInput,
    pub resolution: Option<String>,
}
impl ImageAINailArtProParams {
    pub fn new(image: FileInput, reference_image: FileInput) -> Self {
        Self {
            image: image,
            reference_image: reference_image,
            resolution: None,
        }
    }
}
impl ApiParams for ImageAINailArtProParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_file(form, "reference_image", &self.reference_image)?;
        form = add_optional_text(form, "resolution", &self.resolution);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageAIPhotographyParams {
    pub image: FileInput,
    pub style_title: String,
    pub style_desc: String,
    pub image_size: Option<String>,
}
impl ImageAIPhotographyParams {
    pub fn new(image: FileInput, style_title: String, style_desc: String) -> Self {
        Self {
            image: image,
            style_title: style_title,
            style_desc: style_desc,
            image_size: None,
        }
    }
}
impl ApiParams for ImageAIPhotographyParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "style_title", &self.style_title);
        form = add_text(form, "style_desc", &self.style_desc);
        form = add_optional_text(form, "image_size", &self.image_size);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageAIEmojiGeneratorParams {
    pub image: FileInput,
    pub expression: String,
    pub style: String,
    pub scene: String,
    pub filler: Option<String>,
}
impl ImageAIEmojiGeneratorParams {
    pub fn new(image: FileInput, expression: String, style: String, scene: String) -> Self {
        Self {
            image: image,
            expression: expression,
            style: style,
            scene: scene,
            filler: None,
        }
    }
}
impl ApiParams for ImageAIEmojiGeneratorParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "expression", &self.expression);
        form = add_text(form, "style", &self.style);
        form = add_text(form, "scene", &self.scene);
        form = add_optional_text(form, "filler", &self.filler);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImagePhotoToColoringPageParams {
    pub image: FileInput,
    pub prompt: Option<String>,
    pub image_size: Option<String>,
}
impl ImagePhotoToColoringPageParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            prompt: None,
            image_size: None,
        }
    }
}
impl ApiParams for ImagePhotoToColoringPageParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "prompt", &self.prompt);
        form = add_optional_text(form, "image_size", &self.image_size);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct ImageAIFlowerWallpaperParams {
    pub name: Option<String>,
    pub flower_elements: Option<String>,
    pub style: Option<String>,
    pub background: Option<String>,
    pub aspect_ratio: Option<String>,
}
impl ImageAIFlowerWallpaperParams {
    pub fn new() -> Self {
        Self {
            name: None,
            flower_elements: None,
            style: None,
            background: None,
            aspect_ratio: None,
        }
    }
}
impl ApiParams for ImageAIFlowerWallpaperParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_optional_text(form, "name", &self.name);
        form = add_optional_text(form, "flower_elements", &self.flower_elements);
        form = add_optional_text(form, "style", &self.style);
        form = add_optional_text(form, "background", &self.background);
        form = add_optional_text(form, "aspect_ratio", &self.aspect_ratio);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIFaceRatingParams {
    pub image: FileInput,
    pub aspect_ratio: Option<String>,
}
impl PortraitAIFaceRatingParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            aspect_ratio: None,
        }
    }
}
impl ApiParams for PortraitAIFaceRatingParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "aspect_ratio", &self.aspect_ratio);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIBaldParams {
    pub image: FileInput,
}
impl PortraitAIBaldParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitAIBaldParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIBeardRemovalParams {
    pub image: FileInput,
}
impl PortraitAIBeardRemovalParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitAIBeardRemovalParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIBeardStylingParams {
    pub image: FileInput,
    pub beard: Option<String>,
    pub image_template: Option<FileInput>,
}
impl PortraitAIBeardStylingParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            beard: None,
            image_template: None,
        }
    }
}
impl ApiParams for PortraitAIBeardStylingParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "beard", &self.beard);
        form = add_optional_file(form, "image_template", &self.image_template)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIBreastExpansionParams {
    pub task_type: Option<String>,
    pub person_image: FileInput,
}
impl PortraitAIBreastExpansionParams {
    pub fn new(person_image: FileInput) -> Self {
        Self {
            task_type: None,
            person_image: person_image,
        }
    }
}
impl ApiParams for PortraitAIBreastExpansionParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_optional_text(form, "task_type", &self.task_type);
        form = add_file(form, "person_image", &self.person_image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIButtEnhancementParams {
    pub image: FileInput,
}
impl PortraitAIButtEnhancementParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitAIButtEnhancementParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIColoredContactsParams {
    pub image: FileInput,
    pub name: Option<String>,
    pub desc: Option<String>,
}
impl PortraitAIColoredContactsParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            name: None,
            desc: None,
        }
    }
}
impl ApiParams for PortraitAIColoredContactsParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "name", &self.name);
        form = add_optional_text(form, "desc", &self.desc);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIEyebrowsParams {
    pub image: FileInput,
    pub reference_image: FileInput,
    pub resolution: Option<String>,
}
impl PortraitAIEyebrowsParams {
    pub fn new(image: FileInput, reference_image: FileInput) -> Self {
        Self {
            image: image,
            reference_image: reference_image,
            resolution: None,
        }
    }
}
impl ApiParams for PortraitAIEyebrowsParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_file(form, "reference_image", &self.reference_image)?;
        form = add_optional_text(form, "resolution", &self.resolution);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIEyelashesParams {
    pub image: FileInput,
    pub name: Option<String>,
    pub desc: Option<String>,
}
impl PortraitAIEyelashesParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            name: None,
            desc: None,
        }
    }
}
impl ApiParams for PortraitAIEyelashesParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "name", &self.name);
        form = add_optional_text(form, "desc", &self.desc);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIEyeshadowTryOnParams {
    pub image: FileInput,
    pub eyeshadow_style: Option<String>,
    pub image_template: Option<FileInput>,
    pub aspect_ratio: Option<String>,
}
impl PortraitAIEyeshadowTryOnParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            eyeshadow_style: None,
            image_template: None,
            aspect_ratio: None,
        }
    }
}
impl ApiParams for PortraitAIEyeshadowTryOnParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "eyeshadow_style", &self.eyeshadow_style);
        form = add_optional_file(form, "image_template", &self.image_template)?;
        form = add_optional_text(form, "aspect_ratio", &self.aspect_ratio);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIFaceSwapParams {
    pub image_target: FileInput,
    pub image_template: FileInput,
}
impl PortraitAIFaceSwapParams {
    pub fn new(image_target: FileInput, image_template: FileInput) -> Self {
        Self {
            image_target: image_target,
            image_template: image_template,
        }
    }
}
impl ApiParams for PortraitAIFaceSwapParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image_target", &self.image_target)?;
        form = add_file(form, "image_template", &self.image_template)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIFatFilterParams {
    pub image: FileInput,
}
impl PortraitAIFatFilterParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitAIFatFilterParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIHairColorParams {
    pub image: FileInput,
    pub name: Option<String>,
    pub desc: Option<String>,
}
impl PortraitAIHairColorParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            name: None,
            desc: None,
        }
    }
}
impl ApiParams for PortraitAIHairColorParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "name", &self.name);
        form = add_optional_text(form, "desc", &self.desc);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIHairLossSimulationParams {
    pub image: FileInput,
    pub level: String,
}
impl PortraitAIHairLossSimulationParams {
    pub fn new(image: FileInput, level: String) -> Self {
        Self {
            image: image,
            level: level,
        }
    }
}
impl ApiParams for PortraitAIHairLossSimulationParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "level", &self.level);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAILipEnhancementParams {
    pub image: FileInput,
}
impl PortraitAILipEnhancementParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitAILipEnhancementParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIWaistSlimmingParams {
    pub image: FileInput,
}
impl PortraitAIWaistSlimmingParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitAIWaistSlimmingParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitTryOnClothesPremiumParams {
    pub task_type: String,
    pub person_image: FileInput,
    pub top_garment: FileInput,
    pub resolution: Option<f64>,
    pub restore_face: Option<bool>,
    pub bottom_garment: Option<FileInput>,
}
impl PortraitTryOnClothesPremiumParams {
    pub fn new(task_type: String, person_image: FileInput, top_garment: FileInput) -> Self {
        Self {
            task_type: task_type,
            person_image: person_image,
            top_garment: top_garment,
            resolution: None,
            restore_face: None,
            bottom_garment: None,
        }
    }
}
impl ApiParams for PortraitTryOnClothesPremiumParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_text(form, "task_type", &self.task_type);
        form = add_file(form, "person_image", &self.person_image)?;
        form = add_file(form, "top_garment", &self.top_garment)?;
        form = add_optional_text(form, "resolution", &self.resolution);
        form = add_optional_text(form, "restore_face", &self.restore_face);
        form = add_optional_file(form, "bottom_garment", &self.bottom_garment)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIBigHeadEffectParams {
    pub image: FileInput,
}
impl PortraitAIBigHeadEffectParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitAIBigHeadEffectParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIHalloweenMaskParams {
    pub image: FileInput,
    pub mask_style: Option<String>,
    pub image_template: Option<FileInput>,
    pub aspect_ratio: Option<String>,
}
impl PortraitAIHalloweenMaskParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            mask_style: None,
            image_template: None,
            aspect_ratio: None,
        }
    }
}
impl ApiParams for PortraitAIHalloweenMaskParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "mask_style", &self.mask_style);
        form = add_optional_file(form, "image_template", &self.image_template)?;
        form = add_optional_text(form, "aspect_ratio", &self.aspect_ratio);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAILipBiteExpressionsParams {
    pub image: FileInput,
    pub grid_count: Option<i64>,
    pub aspect_ratio: Option<String>,
}
impl PortraitAILipBiteExpressionsParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            grid_count: None,
            aspect_ratio: None,
        }
    }
}
impl ApiParams for PortraitAILipBiteExpressionsParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "grid_count", &self.grid_count);
        form = add_optional_text(form, "aspect_ratio", &self.aspect_ratio);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAIRedLipGlossParams {
    pub image: FileInput,
}
impl PortraitAIRedLipGlossParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitAIRedLipGlossParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAISquareFaceFilterParams {
    pub image: FileInput,
}
impl PortraitAISquareFaceFilterParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
        }
    }
}
impl ApiParams for PortraitAISquareFaceFilterParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitExpressionEditingAdvancedParams {
    pub image: FileInput,
    pub expression: String,
}
impl PortraitExpressionEditingAdvancedParams {
    pub fn new(image: FileInput, expression: String) -> Self {
        Self {
            image: image,
            expression: expression,
        }
    }
}
impl ApiParams for PortraitExpressionEditingAdvancedParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_text(form, "expression", &self.expression);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitHairstyleEditingPremiumParams {
    pub image: FileInput,
    pub image_template: Option<FileInput>,
    pub hair_style: Option<String>,
    pub color: Option<String>,
}
impl PortraitHairstyleEditingPremiumParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            image_template: None,
            hair_style: None,
            color: None,
        }
    }
}
impl ApiParams for PortraitHairstyleEditingPremiumParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_file(form, "image_template", &self.image_template)?;
        form = add_optional_text(form, "hair_style", &self.hair_style);
        form = add_optional_text(form, "color", &self.color);
        Ok(form)
    }
}

#[derive(Debug, Clone)]
pub struct PortraitAISkinEnhancementAdvancedParams {
    pub image: FileInput,
    pub smart_skin: Option<String>,
    pub acne_removal: Option<String>,
    pub spot_correction: Option<String>,
    pub skin_brightening: Option<String>,
    pub skin_smoothing: Option<String>,
    pub pore_control: Option<String>,
    pub wrinkle_reduction: Option<String>,
    pub under_eye_correction: Option<String>,
    pub scar_reduction: Option<String>,
}
impl PortraitAISkinEnhancementAdvancedParams {
    pub fn new(image: FileInput) -> Self {
        Self {
            image: image,
            smart_skin: None,
            acne_removal: None,
            spot_correction: None,
            skin_brightening: None,
            skin_smoothing: None,
            pore_control: None,
            wrinkle_reduction: None,
            under_eye_correction: None,
            scar_reduction: None,
        }
    }
}
impl ApiParams for PortraitAISkinEnhancementAdvancedParams {
    fn multipart_form(&self) -> Result<Form> {
        let mut form = Form::new();
        form = add_file(form, "image", &self.image)?;
        form = add_optional_text(form, "smart_skin", &self.smart_skin);
        form = add_optional_text(form, "acne_removal", &self.acne_removal);
        form = add_optional_text(form, "spot_correction", &self.spot_correction);
        form = add_optional_text(form, "skin_brightening", &self.skin_brightening);
        form = add_optional_text(form, "skin_smoothing", &self.skin_smoothing);
        form = add_optional_text(form, "pore_control", &self.pore_control);
        form = add_optional_text(form, "wrinkle_reduction", &self.wrinkle_reduction);
        form = add_optional_text(form, "under_eye_correction", &self.under_eye_correction);
        form = add_optional_text(form, "scar_reduction", &self.scar_reduction);
        Ok(form)
    }
}
