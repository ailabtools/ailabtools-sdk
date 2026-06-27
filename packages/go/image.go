package ailabtools

import (
	"context"
	"net/http"
)

type ImageAPI struct {
	requester *requester
}

type ImageQueryingAsyncTaskResultsParams struct {
	JobID string `form:"job_id"`
	Type  string `form:"type"`
}

type ImageQueryingAsyncTaskResultsResponseData struct {
}

type ImageQueryingAsyncTaskResultsResponse = BaseResponse[ImageQueryingAsyncTaskResultsResponseData]

func (api *ImageAPI) ImageQueryingAsyncTaskResults(ctx context.Context, params ImageQueryingAsyncTaskResultsParams) (*ImageQueryingAsyncTaskResultsResponse, error) {
	if err := validateRequired(params, "JobID", "Type"); err != nil {
		return nil, err
	}
	var out ImageQueryingAsyncTaskResultsResponse
	err := api.requester.request(ctx, http.MethodGet, "/api/image/asyn-task-results", params, nil, false, &out)
	return &out, err
}

type ImageAiImageExtenderParams struct {
	CustomPrompt string    `form:"custom_prompt,omitempty"`
	Steps        int       `form:"steps,omitempty"`
	Strength     float64   `form:"strength,omitempty"`
	Scale        float64   `form:"scale,omitempty"`
	Seed         int       `form:"seed,omitempty"`
	MaxHeight    int       `form:"max_height,omitempty"`
	MaxWidth     int       `form:"max_width,omitempty"`
	Image        FileInput `form:"image"`
	Top          float64   `form:"top,omitempty"`
	Bottom       float64   `form:"bottom,omitempty"`
	Left         float64   `form:"left,omitempty"`
	Right        float64   `form:"right,omitempty"`
	Mask         FileInput `form:"mask,omitempty"`
}

type ImageAiImageExtenderResponseData struct {
	BinaryDataBase64 []string `json:"binary_data_base64,omitempty"`
}

type ImageAiImageExtenderResponse = BaseResponse[ImageAiImageExtenderResponseData]

func (api *ImageAPI) ImageAiImageExtender(ctx context.Context, params ImageAiImageExtenderParams) (*ImageAiImageExtenderResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out ImageAiImageExtenderResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/ai-image-extender", nil, params, true, &out)
	return &out, err
}

type ImageAiObjectReplacerParams struct {
	Image        FileInput `form:"image"`
	Mask         FileInput `form:"mask"`
	CustomPrompt string    `form:"custom_prompt,omitempty"`
	Steps        int       `form:"steps,omitempty"`
	Scale        float64   `form:"scale,omitempty"`
	Seed         int       `form:"seed,omitempty"`
}

type ImageAiObjectReplacerResponseData struct {
	BinaryDataBase64 []string `json:"binary_data_base64,omitempty"`
}

type ImageAiObjectReplacerResponse = BaseResponse[ImageAiObjectReplacerResponseData]

func (api *ImageAPI) ImageAiObjectReplacer(ctx context.Context, params ImageAiObjectReplacerParams) (*ImageAiObjectReplacerResponse, error) {
	if err := validateRequired(params, "Image", "Mask"); err != nil {
		return nil, err
	}
	var out ImageAiObjectReplacerResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/ai-object-replacer", nil, params, true, &out)
	return &out, err
}

type ImageAIImageCroppingParams struct {
	Image  FileInput `form:"image"`
	Width  int       `form:"width"`
	Height int       `form:"height"`
}

type ImageAIImageCroppingResponseData struct {
	URL            string `json:"url,omitempty"`
	RetainLocation any    `json:"retain_location,omitempty"`
	Width          int    `json:"width,omitempty"`
	Height         int    `json:"height,omitempty"`
	Y              int    `json:"y,omitempty"`
	X              int    `json:"x,omitempty"`
}

type ImageAIImageCroppingResponse = BaseResponse[ImageAIImageCroppingResponseData]

func (api *ImageAPI) ImageAIImageCropping(ctx context.Context, params ImageAIImageCroppingParams) (*ImageAIImageCroppingResponse, error) {
	if err := validateRequired(params, "Image", "Width", "Height"); err != nil {
		return nil, err
	}
	var out ImageAIImageCroppingResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/image-cropping", nil, params, true, &out)
	return &out, err
}

type ImageErasureParams struct {
	Image    FileInput `form:"image"`
	UserMask FileInput `form:"user_mask"`
}

type ImageErasureResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type ImageErasureResponse = BaseResponse[ImageErasureResponseData]

func (api *ImageAPI) ImageErasure(ctx context.Context, params ImageErasureParams) (*ImageErasureResponse, error) {
	if err := validateRequired(params, "Image", "UserMask"); err != nil {
		return nil, err
	}
	var out ImageErasureResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/image-erase", nil, params, true, &out)
	return &out, err
}

type ImageInvisibleImageWatermarkParams struct {
	FunctionType   string    `form:"function_type"`
	OriginImage    FileInput `form:"origin_image,omitempty"`
	Logo           FileInput `form:"logo,omitempty"`
	WatermarkImage FileInput `form:"watermark_image,omitempty"`
	OutputFileType string    `form:"output_file_type,omitempty"`
	QualityFactor  int       `form:"quality_factor,omitempty"`
}

type ImageInvisibleImageWatermarkResponseData struct {
	WatermarkImageURL string `json:"watermark_image_url,omitempty"`
	LogoURL           string `json:"logo_url,omitempty"`
}

type ImageInvisibleImageWatermarkResponse = BaseResponse[ImageInvisibleImageWatermarkResponseData]

func (api *ImageAPI) ImageInvisibleImageWatermark(ctx context.Context, params ImageInvisibleImageWatermarkParams) (*ImageInvisibleImageWatermarkResponse, error) {
	if err := validateRequired(params, "FunctionType"); err != nil {
		return nil, err
	}
	var out ImageInvisibleImageWatermarkResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/image-invisible-image-watermark", nil, params, true, &out)
	return &out, err
}

type ImageInvisibleTextWatermarkParams struct {
	FunctionType   string    `form:"function_type"`
	OriginImage    FileInput `form:"origin_image,omitempty"`
	Text           string    `form:"text,omitempty"`
	WatermarkImage FileInput `form:"watermark_image,omitempty"`
	OutputFileType string    `form:"output_file_type,omitempty"`
	QualityFactor  int       `form:"quality_factor,omitempty"`
}

type ImageInvisibleTextWatermarkResponseData struct {
	WatermarkImageURL string `json:"watermark_image_url,omitempty"`
	TextImageURL      string `json:"text_image_url,omitempty"`
}

type ImageInvisibleTextWatermarkResponse = BaseResponse[ImageInvisibleTextWatermarkResponseData]

func (api *ImageAPI) ImageInvisibleTextWatermark(ctx context.Context, params ImageInvisibleTextWatermarkParams) (*ImageInvisibleTextWatermarkResponse, error) {
	if err := validateRequired(params, "FunctionType"); err != nil {
		return nil, err
	}
	var out ImageInvisibleTextWatermarkResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/image-invisible-text-watermarking", nil, params, true, &out)
	return &out, err
}

type ImageIntelligentCompositionParams struct {
	Image    FileInput `form:"image"`
	NumBoxes int       `form:"num_boxes,omitempty"`
}

type ImageIntelligentCompositionResponseData struct {
	Elements []any   `json:"elements,omitempty"`
	MinX     int     `json:"min_x,omitempty"`
	MaxX     int     `json:"max_x,omitempty"`
	MinY     int     `json:"min_y,omitempty"`
	MaxY     int     `json:"max_y,omitempty"`
	Score    float64 `json:"score,omitempty"`
}

type ImageIntelligentCompositionResponse = BaseResponse[ImageIntelligentCompositionResponseData]

func (api *ImageAPI) ImageIntelligentComposition(ctx context.Context, params ImageIntelligentCompositionParams) (*ImageIntelligentCompositionResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out ImageIntelligentCompositionResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/intelligent-composition", nil, params, true, &out)
	return &out, err
}

type ImagePhotoEditingParams struct {
	Image FileInput `form:"image"`
	Style FileInput `form:"style"`
}

type ImagePhotoEditingResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type ImagePhotoEditingResponse = BaseResponse[ImagePhotoEditingResponseData]

func (api *ImageAPI) ImagePhotoEditing(ctx context.Context, params ImagePhotoEditingParams) (*ImagePhotoEditingResponse, error) {
	if err := validateRequired(params, "Image", "Style"); err != nil {
		return nil, err
	}
	var out ImagePhotoEditingResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/photo-retouching", nil, params, true, &out)
	return &out, err
}

type ImageRemoveObjectsParams struct {
	Image FileInput `form:"image"`
	Mask  FileInput `form:"mask"`
}

type ImageRemoveObjectsResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type ImageRemoveObjectsResponse = BaseResponse[ImageRemoveObjectsResponseData]

func (api *ImageAPI) ImageRemoveObjects(ctx context.Context, params ImageRemoveObjectsParams) (*ImageRemoveObjectsResponse, error) {
	if err := validateRequired(params, "Image", "Mask"); err != nil {
		return nil, err
	}
	var out ImageRemoveObjectsResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/remove-objects", nil, params, true, &out)
	return &out, err
}

type ImageRemoveObjectsAdvancedParams struct {
	Image      FileInput `form:"image"`
	Mask       FileInput `form:"mask"`
	Steps      int       `form:"steps,omitempty"`
	Strength   float64   `form:"strength,omitempty"`
	Scale      float64   `form:"scale,omitempty"`
	Seed       int       `form:"seed,omitempty"`
	DilateSize int       `form:"dilate_size,omitempty"`
	Quality    string    `form:"quality,omitempty"`
}

type ImageRemoveObjectsAdvancedResponseData struct {
	BinaryDataBase64 []string `json:"binary_data_base64,omitempty"`
}

type ImageRemoveObjectsAdvancedResponse = BaseResponse[ImageRemoveObjectsAdvancedResponseData]

func (api *ImageAPI) ImageRemoveObjectsAdvanced(ctx context.Context, params ImageRemoveObjectsAdvancedParams) (*ImageRemoveObjectsAdvancedResponse, error) {
	if err := validateRequired(params, "Image", "Mask"); err != nil {
		return nil, err
	}
	var out ImageRemoveObjectsAdvancedResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/remove-objects-advanced", nil, params, true, &out)
	return &out, err
}

type ImageRemoveObjectsProParams struct {
	Image FileInput `form:"image"`
	Mask  FileInput `form:"mask"`
}

type ImageRemoveObjectsProResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type ImageRemoveObjectsProResponse = BaseResponse[ImageRemoveObjectsProResponseData]

func (api *ImageAPI) ImageRemoveObjectsPro(ctx context.Context, params ImageRemoveObjectsProParams) (*ImageRemoveObjectsProResponse, error) {
	if err := validateRequired(params, "Image", "Mask"); err != nil {
		return nil, err
	}
	var out ImageRemoveObjectsProResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/remove-objects-pro", nil, params, true, &out)
	return &out, err
}

type ImageAICartoonGeneratorParams struct {
	TaskType string    `form:"task_type"`
	Image    FileInput `form:"image"`
	Type     string    `form:"type"`
}

type ImageAICartoonGeneratorResponseData struct {
	TaskType string `json:"task_type,omitempty"`
	TaskID   string `json:"task_id,omitempty"`
}

type ImageAICartoonGeneratorResponse = BaseResponse[ImageAICartoonGeneratorResponseData]

func (api *ImageAPI) ImageAICartoonGenerator(ctx context.Context, params ImageAICartoonGeneratorParams) (*ImageAICartoonGeneratorResponse, error) {
	if err := validateRequired(params, "TaskType", "Image", "Type"); err != nil {
		return nil, err
	}
	var out ImageAICartoonGeneratorResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/effects/ai-anime-generator", nil, params, true, &out)
	return &out, err
}

type ImageColoringParams struct {
	Image FileInput `form:"image"`
}

type ImageColoringResponseData struct {
	Image string `json:"image,omitempty"`
}

type ImageColoringResponse = BaseResponse[ImageColoringResponseData]

func (api *ImageAPI) ImageColoring(ctx context.Context, params ImageColoringParams) (*ImageColoringResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out ImageColoringResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/effects/image-colorization", nil, params, true, &out)
	return &out, err
}

type ImageStyleTransferParams struct {
	Image  FileInput `form:"image"`
	Option string    `form:"option"`
}

type ImageStyleTransferResponseData struct {
	Image string `json:"image,omitempty"`
}

type ImageStyleTransferResponse = BaseResponse[ImageStyleTransferResponseData]

func (api *ImageAPI) ImageStyleTransfer(ctx context.Context, params ImageStyleTransferParams) (*ImageStyleTransferResponse, error) {
	if err := validateRequired(params, "Image", "Option"); err != nil {
		return nil, err
	}
	var out ImageStyleTransferResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/effects/image-style-conversion", nil, params, true, &out)
	return &out, err
}

type ImageStyleMigrationParams struct {
	Style FileInput `form:"style"`
	Major FileInput `form:"major"`
}

type ImageStyleMigrationResponseData struct {
	URL      string `json:"url,omitempty"`
	MajorURL string `json:"major_url,omitempty"`
}

type ImageStyleMigrationResponse = BaseResponse[ImageStyleMigrationResponseData]

func (api *ImageAPI) ImageStyleMigration(ctx context.Context, params ImageStyleMigrationParams) (*ImageStyleMigrationResponse, error) {
	if err := validateRequired(params, "Style", "Major"); err != nil {
		return nil, err
	}
	var out ImageStyleMigrationResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/effects/image-style-migration", nil, params, true, &out)
	return &out, err
}

type ImageColorEnhancementParams struct {
	Image        FileInput `form:"image"`
	OutputFormat string    `form:"output_format"`
	Mode         string    `form:"mode"`
}

type ImageColorEnhancementResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type ImageColorEnhancementResponse = BaseResponse[ImageColorEnhancementResponseData]

func (api *ImageAPI) ImageColorEnhancement(ctx context.Context, params ImageColorEnhancementParams) (*ImageColorEnhancementResponse, error) {
	if err := validateRequired(params, "Image", "OutputFormat", "Mode"); err != nil {
		return nil, err
	}
	var out ImageColorEnhancementResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/enhance/image-color-enhancement", nil, params, true, &out)
	return &out, err
}

type ImageContrastEnhancementParams struct {
	Image FileInput `form:"image"`
}

type ImageContrastEnhancementResponseData struct {
	Image string `json:"image,omitempty"`
}

type ImageContrastEnhancementResponse = BaseResponse[ImageContrastEnhancementResponseData]

func (api *ImageAPI) ImageContrastEnhancement(ctx context.Context, params ImageContrastEnhancementParams) (*ImageContrastEnhancementResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out ImageContrastEnhancementResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/enhance/image-contrast-enhancement", nil, params, true, &out)
	return &out, err
}

type ImageDehazeParams struct {
	Image FileInput `form:"image"`
}

type ImageDehazeResponseData struct {
	Image string `json:"image,omitempty"`
}

type ImageDehazeResponse = BaseResponse[ImageDehazeResponseData]

func (api *ImageAPI) ImageDehaze(ctx context.Context, params ImageDehazeParams) (*ImageDehazeResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out ImageDehazeResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/enhance/image-defogging", nil, params, true, &out)
	return &out, err
}

type ImageLosslessEnlargementParams struct {
	Image         FileInput `form:"image"`
	UpscaleFactor int       `form:"upscale_factor,omitempty"`
	Mode          string    `form:"mode,omitempty"`
	OutputFormat  string    `form:"output_format,omitempty"`
	OutputQuality int       `form:"output_quality,omitempty"`
}

type ImageLosslessEnlargementResponseData struct {
	URL string `json:"url,omitempty"`
}

type ImageLosslessEnlargementResponse = BaseResponse[ImageLosslessEnlargementResponseData]

func (api *ImageAPI) ImageLosslessEnlargement(ctx context.Context, params ImageLosslessEnlargementParams) (*ImageLosslessEnlargementResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out ImageLosslessEnlargementResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/enhance/image-lossless-enlargement", nil, params, true, &out)
	return &out, err
}

type ImageClarityEnhancementParams struct {
	Image FileInput `form:"image"`
}

type ImageClarityEnhancementResponseData struct {
	Image string `json:"image,omitempty"`
}

type ImageClarityEnhancementResponse = BaseResponse[ImageClarityEnhancementResponseData]

func (api *ImageAPI) ImageClarityEnhancement(ctx context.Context, params ImageClarityEnhancementParams) (*ImageClarityEnhancementResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out ImageClarityEnhancementResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/enhance/image-sharpness-enhancement", nil, params, true, &out)
	return &out, err
}

type ImageDistortionCorrectionParams struct {
	Image FileInput `form:"image"`
}

type ImageDistortionCorrectionResponseData struct {
	Image string  `json:"image,omitempty"`
	Ratio float64 `json:"ratio,omitempty"`
}

type ImageDistortionCorrectionResponse = BaseResponse[ImageDistortionCorrectionResponseData]

func (api *ImageAPI) ImageDistortionCorrection(ctx context.Context, params ImageDistortionCorrectionParams) (*ImageDistortionCorrectionResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out ImageDistortionCorrectionResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/enhance/stretch-image-recovery", nil, params, true, &out)
	return &out, err
}

type ImageCompositionAestheticsScoreParams struct {
	Image FileInput `form:"image"`
}

type ImageCompositionAestheticsScoreResponseData struct {
	Score float64 `json:"score,omitempty"`
}

type ImageCompositionAestheticsScoreResponse = BaseResponse[ImageCompositionAestheticsScoreResponseData]

func (api *ImageAPI) ImageCompositionAestheticsScore(ctx context.Context, params ImageCompositionAestheticsScoreParams) (*ImageCompositionAestheticsScoreResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out ImageCompositionAestheticsScoreResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/rating/image-composition-aesthetics-scoring", nil, params, true, &out)
	return &out, err
}

type ImageExposureRatingParams struct {
	Image FileInput `form:"image"`
}

type ImageExposureRatingResponseData struct {
	Exposure float64 `json:"exposure,omitempty"`
}

type ImageExposureRatingResponse = BaseResponse[ImageExposureRatingResponseData]

func (api *ImageAPI) ImageExposureRating(ctx context.Context, params ImageExposureRatingParams) (*ImageExposureRatingResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out ImageExposureRatingResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/rating/image-exposure-score", nil, params, true, &out)
	return &out, err
}

func (api *ImageAPI) Upscale(ctx context.Context, params ImageLosslessEnlargementParams) (*ImageLosslessEnlargementResponse, error) {
	return api.ImageLosslessEnlargement(ctx, params)
}

func (api *ImageAPI) RemoveObjects(ctx context.Context, params ImageRemoveObjectsParams) (*ImageRemoveObjectsResponse, error) {
	return api.ImageRemoveObjects(ctx, params)
}

// BEGIN GENERATED OPENAPI ADDITIONS

type ImageAINailArtParams struct {
	Image    FileInput `form:"image"`
	NailName string    `form:"nail_name"`
	NailDesc string    `form:"nail_desc"`
}

type ImageAINailArtResponseData struct {
}

type ImageAINailArtResponse = BaseResponse[ImageAINailArtResponseData]

func (api *ImageAPI) ImageAINailArt(ctx context.Context, params ImageAINailArtParams) (*ImageAINailArtResponse, error) {
	if err := validateRequired(params, "Image", "NailName", "NailDesc"); err != nil {
		return nil, err
	}
	var out ImageAINailArtResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/ai-nail-art", nil, params, true, &out)
	return &out, err
}

type ImageAINailArtProParams struct {
	Image          FileInput `form:"image"`
	ReferenceImage FileInput `form:"reference_image"`
	Resolution     string    `form:"resolution,omitempty"`
}

type ImageAINailArtProResponseData struct {
}

type ImageAINailArtProResponse = BaseResponse[ImageAINailArtProResponseData]

func (api *ImageAPI) ImageAINailArtPro(ctx context.Context, params ImageAINailArtProParams) (*ImageAINailArtProResponse, error) {
	if err := validateRequired(params, "Image", "ReferenceImage"); err != nil {
		return nil, err
	}
	var out ImageAINailArtProResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/editing/ai-nail-art-pro", nil, params, true, &out)
	return &out, err
}

type ImageAIPhotographyParams struct {
	Image      FileInput `form:"image"`
	StyleTitle string    `form:"style_title"`
	StyleDesc  string    `form:"style_desc"`
	ImageSize  string    `form:"image_size,omitempty"`
}

type ImageAIPhotographyResponseData struct {
}

type ImageAIPhotographyResponse = BaseResponse[ImageAIPhotographyResponseData]

func (api *ImageAPI) ImageAIPhotography(ctx context.Context, params ImageAIPhotographyParams) (*ImageAIPhotographyResponse, error) {
	if err := validateRequired(params, "Image", "StyleTitle", "StyleDesc"); err != nil {
		return nil, err
	}
	var out ImageAIPhotographyResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/effects/ai-photography", nil, params, true, &out)
	return &out, err
}

type ImageAIEmojiGeneratorParams struct {
	Image      FileInput `form:"image"`
	Expression string    `form:"expression"`
	Style      string    `form:"style"`
	Scene      string    `form:"scene"`
	Filler     string    `form:"filler,omitempty"`
}

type ImageAIEmojiGeneratorResponseData struct {
}

type ImageAIEmojiGeneratorResponse = BaseResponse[ImageAIEmojiGeneratorResponseData]

func (api *ImageAPI) ImageAIEmojiGenerator(ctx context.Context, params ImageAIEmojiGeneratorParams) (*ImageAIEmojiGeneratorResponse, error) {
	if err := validateRequired(params, "Image", "Expression", "Style", "Scene"); err != nil {
		return nil, err
	}
	var out ImageAIEmojiGeneratorResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/effects/photo-to-emoji-grid", nil, params, true, &out)
	return &out, err
}

type ImagePhotoToColoringPageParams struct {
	Image     FileInput `form:"image"`
	Prompt    string    `form:"prompt,omitempty"`
	ImageSize string    `form:"image_size,omitempty"`
}

type ImagePhotoToColoringPageResponseData struct {
}

type ImagePhotoToColoringPageResponse = BaseResponse[ImagePhotoToColoringPageResponseData]

func (api *ImageAPI) ImagePhotoToColoringPage(ctx context.Context, params ImagePhotoToColoringPageParams) (*ImagePhotoToColoringPageResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out ImagePhotoToColoringPageResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/effects/photo-to-line-art", nil, params, true, &out)
	return &out, err
}

type ImageAIFlowerWallpaperParams struct {
	Name           string `form:"name,omitempty"`
	FlowerElements string `form:"flower_elements,omitempty"`
	Style          string `form:"style,omitempty"`
	Background     string `form:"background,omitempty"`
	AspectRatio    string `form:"aspect_ratio,omitempty"`
}

type ImageAIFlowerWallpaperResponseData struct {
}

type ImageAIFlowerWallpaperResponse = BaseResponse[ImageAIFlowerWallpaperResponseData]

func (api *ImageAPI) ImageAIFlowerWallpaper(ctx context.Context, params ImageAIFlowerWallpaperParams) (*ImageAIFlowerWallpaperResponse, error) {
	var out ImageAIFlowerWallpaperResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/image/generation/ai-flower-wallpaper", nil, params, true, &out)
	return &out, err
}
