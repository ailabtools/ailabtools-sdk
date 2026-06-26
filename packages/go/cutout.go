package ailabtools

import (
	"context"
	"net/http"
)

type CutoutAPI struct {
	requester *requester
}

type CutoutClothingBackgroundRemovalParams struct {
	Image      FileInput `form:"image"`
	OutMode    int       `form:"out_mode,omitempty"`
	ClothClass string    `form:"cloth_class,omitempty"`
	ReturnForm string    `form:"return_form,omitempty"`
}

type CutoutClothingBackgroundRemovalResponseData struct {
	Elements []any  `json:"elements,omitempty"`
	ImageURL string `json:"image_url,omitempty"`
	ClassURL any    `json:"class_url,omitempty"`
	Tops     string `json:"tops,omitempty"`
	Coat     string `json:"coat,omitempty"`
	Skirt    string `json:"skirt,omitempty"`
	Pants    string `json:"pants,omitempty"`
	Bag      string `json:"bag,omitempty"`
	Shoes    string `json:"shoes,omitempty"`
	Hat      string `json:"hat,omitempty"`
}

type CutoutClothingBackgroundRemovalResponse = BaseResponse[CutoutClothingBackgroundRemovalResponseData]

func (api *CutoutAPI) CutoutClothingBackgroundRemoval(ctx context.Context, params CutoutClothingBackgroundRemovalParams) (*CutoutClothingBackgroundRemovalResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out CutoutClothingBackgroundRemovalResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/cutout/general/apparel-background-removal", nil, params, true, &out)
	return &out, err
}

type CutoutProductBackgroundRemovalParams struct {
	Image      FileInput `form:"image"`
	ReturnForm string    `form:"return_form,omitempty"`
}

type CutoutProductBackgroundRemovalResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type CutoutProductBackgroundRemovalResponse = BaseResponse[CutoutProductBackgroundRemovalResponseData]

func (api *CutoutAPI) CutoutProductBackgroundRemoval(ctx context.Context, params CutoutProductBackgroundRemovalParams) (*CutoutProductBackgroundRemovalResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out CutoutProductBackgroundRemovalResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/cutout/general/commodity-background-removal", nil, params, true, &out)
	return &out, err
}

type CutoutFoodBackgroundRemovalParams struct {
	Image      FileInput `form:"image"`
	ReturnForm string    `form:"return_form,omitempty"`
}

type CutoutFoodBackgroundRemovalResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type CutoutFoodBackgroundRemovalResponse = BaseResponse[CutoutFoodBackgroundRemovalResponseData]

func (api *CutoutAPI) CutoutFoodBackgroundRemoval(ctx context.Context, params CutoutFoodBackgroundRemovalParams) (*CutoutFoodBackgroundRemovalResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out CutoutFoodBackgroundRemovalResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/cutout/general/food-background-removal", nil, params, true, &out)
	return &out, err
}

type CutoutUniversalBackgroundRemovalParams struct {
	Image      FileInput `form:"image"`
	ReturnForm string    `form:"return_form,omitempty"`
}

type CutoutUniversalBackgroundRemovalResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type CutoutUniversalBackgroundRemovalResponse = BaseResponse[CutoutUniversalBackgroundRemovalResponseData]

func (api *CutoutAPI) CutoutUniversalBackgroundRemoval(ctx context.Context, params CutoutUniversalBackgroundRemovalParams) (*CutoutUniversalBackgroundRemovalResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out CutoutUniversalBackgroundRemovalResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/cutout/general/universal-background-removal", nil, params, true, &out)
	return &out, err
}

type CutoutAvatarExtractionParams struct {
	Image      FileInput `form:"image"`
	ReturnForm string    `form:"return_form,omitempty"`
}

type CutoutAvatarExtractionResponseData struct {
	Elements []any  `json:"elements,omitempty"`
	ImageURL string `json:"image_url,omitempty"`
	Width    int    `json:"width,omitempty"`
	Height   int    `json:"height,omitempty"`
	X        int    `json:"x,omitempty"`
	Y        int    `json:"y,omitempty"`
}

type CutoutAvatarExtractionResponse = BaseResponse[CutoutAvatarExtractionResponseData]

func (api *CutoutAPI) CutoutAvatarExtraction(ctx context.Context, params CutoutAvatarExtractionParams) (*CutoutAvatarExtractionResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out CutoutAvatarExtractionResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/cutout/portrait/avatar-extraction", nil, params, true, &out)
	return &out, err
}

type CutoutHairExtractionParams struct {
	Image FileInput `form:"image"`
}

type CutoutHairExtractionResponseData struct {
	Elements []any  `json:"elements,omitempty"`
	ImageURL string `json:"image_url,omitempty"`
	Width    int    `json:"width,omitempty"`
	Height   int    `json:"height,omitempty"`
	X        int    `json:"x,omitempty"`
	Y        int    `json:"y,omitempty"`
}

type CutoutHairExtractionResponse = BaseResponse[CutoutHairExtractionResponseData]

func (api *CutoutAPI) CutoutHairExtraction(ctx context.Context, params CutoutHairExtractionParams) (*CutoutHairExtractionResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out CutoutHairExtractionResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/cutout/portrait/hairstyle-extraction", nil, params, true, &out)
	return &out, err
}

type CutoutHumanBackgroundRemovalParams struct {
	Image      FileInput `form:"image"`
	ReturnForm string    `form:"return_form,omitempty"`
}

type CutoutHumanBackgroundRemovalResponseData struct {
	ImageURL string `json:"image_url,omitempty"`
}

type CutoutHumanBackgroundRemovalResponse = BaseResponse[CutoutHumanBackgroundRemovalResponseData]

func (api *CutoutAPI) CutoutHumanBackgroundRemoval(ctx context.Context, params CutoutHumanBackgroundRemovalParams) (*CutoutHumanBackgroundRemovalResponse, error) {
	if err := validateRequired(params, "Image"); err != nil {
		return nil, err
	}
	var out CutoutHumanBackgroundRemovalResponse
	err := api.requester.request(ctx, http.MethodPost, "/api/cutout/portrait/portrait-background-removal", nil, params, true, &out)
	return &out, err
}
