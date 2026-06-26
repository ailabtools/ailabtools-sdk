import { Requester } from "../http";
import { mapParams } from "../utils";
import {
  CutoutClothingBackgroundRemovalParams,
  CutoutClothingBackgroundRemovalResponse,
  CutoutClothingBackgroundRemovalResponseData,
  validateCutoutClothingBackgroundRemovalParams,
  CutoutClothingBackgroundRemovalParamMap,
  CutoutProductBackgroundRemovalParams,
  CutoutProductBackgroundRemovalResponse,
  CutoutProductBackgroundRemovalResponseData,
  validateCutoutProductBackgroundRemovalParams,
  CutoutProductBackgroundRemovalParamMap,
  CutoutFoodBackgroundRemovalParams,
  CutoutFoodBackgroundRemovalResponse,
  CutoutFoodBackgroundRemovalResponseData,
  validateCutoutFoodBackgroundRemovalParams,
  CutoutFoodBackgroundRemovalParamMap,
  CutoutUniversalBackgroundRemovalParams,
  CutoutUniversalBackgroundRemovalResponse,
  CutoutUniversalBackgroundRemovalResponseData,
  validateCutoutUniversalBackgroundRemovalParams,
  CutoutUniversalBackgroundRemovalParamMap,
  CutoutAvatarExtractionParams,
  CutoutAvatarExtractionResponse,
  CutoutAvatarExtractionResponseData,
  validateCutoutAvatarExtractionParams,
  CutoutAvatarExtractionParamMap,
  CutoutHairExtractionParams,
  CutoutHairExtractionResponse,
  CutoutHairExtractionResponseData,
  validateCutoutHairExtractionParams,
  CutoutHairExtractionParamMap,
  CutoutHumanBackgroundRemovalParams,
  CutoutHumanBackgroundRemovalResponse,
  CutoutHumanBackgroundRemovalResponseData,
  validateCutoutHumanBackgroundRemovalParams,
  CutoutHumanBackgroundRemovalParamMap
} from "../generated/endpoints";

export class CutoutAPI {
  constructor(private request: Requester) {}

  async cutoutClothingBackgroundRemoval(params: CutoutClothingBackgroundRemovalParams): Promise<CutoutClothingBackgroundRemovalResponse> {
    validateCutoutClothingBackgroundRemovalParams(params);
    const mapped = mapParams(params, CutoutClothingBackgroundRemovalParamMap);
    return this.request.request<CutoutClothingBackgroundRemovalResponseData>("POST", "/api/cutout/general/apparel-background-removal", { body: mapped, multipart: true });
  }

  async cutoutProductBackgroundRemoval(params: CutoutProductBackgroundRemovalParams): Promise<CutoutProductBackgroundRemovalResponse> {
    validateCutoutProductBackgroundRemovalParams(params);
    const mapped = mapParams(params, CutoutProductBackgroundRemovalParamMap);
    return this.request.request<CutoutProductBackgroundRemovalResponseData>("POST", "/api/cutout/general/commodity-background-removal", { body: mapped, multipart: true });
  }

  async cutoutFoodBackgroundRemoval(params: CutoutFoodBackgroundRemovalParams): Promise<CutoutFoodBackgroundRemovalResponse> {
    validateCutoutFoodBackgroundRemovalParams(params);
    const mapped = mapParams(params, CutoutFoodBackgroundRemovalParamMap);
    return this.request.request<CutoutFoodBackgroundRemovalResponseData>("POST", "/api/cutout/general/food-background-removal", { body: mapped, multipart: true });
  }

  async cutoutUniversalBackgroundRemoval(params: CutoutUniversalBackgroundRemovalParams): Promise<CutoutUniversalBackgroundRemovalResponse> {
    validateCutoutUniversalBackgroundRemovalParams(params);
    const mapped = mapParams(params, CutoutUniversalBackgroundRemovalParamMap);
    return this.request.request<CutoutUniversalBackgroundRemovalResponseData>("POST", "/api/cutout/general/universal-background-removal", { body: mapped, multipart: true });
  }

  async cutoutAvatarExtraction(params: CutoutAvatarExtractionParams): Promise<CutoutAvatarExtractionResponse> {
    validateCutoutAvatarExtractionParams(params);
    const mapped = mapParams(params, CutoutAvatarExtractionParamMap);
    return this.request.request<CutoutAvatarExtractionResponseData>("POST", "/api/cutout/portrait/avatar-extraction", { body: mapped, multipart: true });
  }

  async cutoutHairExtraction(params: CutoutHairExtractionParams): Promise<CutoutHairExtractionResponse> {
    validateCutoutHairExtractionParams(params);
    const mapped = mapParams(params, CutoutHairExtractionParamMap);
    return this.request.request<CutoutHairExtractionResponseData>("POST", "/api/cutout/portrait/hairstyle-extraction", { body: mapped, multipart: true });
  }

  async cutoutHumanBackgroundRemoval(params: CutoutHumanBackgroundRemovalParams): Promise<CutoutHumanBackgroundRemovalResponse> {
    validateCutoutHumanBackgroundRemovalParams(params);
    const mapped = mapParams(params, CutoutHumanBackgroundRemovalParamMap);
    return this.request.request<CutoutHumanBackgroundRemovalResponseData>("POST", "/api/cutout/portrait/portrait-background-removal", { body: mapped, multipart: true });
  }

}
