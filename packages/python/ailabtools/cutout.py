from .http import Requester
from .utils import map_params
from .generated.endpoints import (
    CutoutClothingBackgroundRemovalParams,
    CutoutClothingBackgroundRemovalResponse,
    CutoutClothingBackgroundRemovalParamMap,
    validate_cutoutClothingBackgroundRemoval_params,
    CutoutProductBackgroundRemovalParams,
    CutoutProductBackgroundRemovalResponse,
    CutoutProductBackgroundRemovalParamMap,
    validate_cutoutProductBackgroundRemoval_params,
    CutoutFoodBackgroundRemovalParams,
    CutoutFoodBackgroundRemovalResponse,
    CutoutFoodBackgroundRemovalParamMap,
    validate_cutoutFoodBackgroundRemoval_params,
    CutoutUniversalBackgroundRemovalParams,
    CutoutUniversalBackgroundRemovalResponse,
    CutoutUniversalBackgroundRemovalParamMap,
    validate_cutoutUniversalBackgroundRemoval_params,
    CutoutAvatarExtractionParams,
    CutoutAvatarExtractionResponse,
    CutoutAvatarExtractionParamMap,
    validate_cutoutAvatarExtraction_params,
    CutoutHairExtractionParams,
    CutoutHairExtractionResponse,
    CutoutHairExtractionParamMap,
    validate_cutoutHairExtraction_params,
    CutoutHumanBackgroundRemovalParams,
    CutoutHumanBackgroundRemovalResponse,
    CutoutHumanBackgroundRemovalParamMap,
    validate_cutoutHumanBackgroundRemoval_params
)

class CutoutAPI:
    def __init__(self, requester: Requester):
        self._requester = requester

    async def cutoutClothingBackgroundRemoval(self, params: CutoutClothingBackgroundRemovalParams) -> CutoutClothingBackgroundRemovalResponse:
        validate_cutoutClothingBackgroundRemoval_params(params)
        mapped = map_params(params, CutoutClothingBackgroundRemovalParamMap)
        return await self._requester.request('POST', '/api/cutout/general/apparel-background-removal', body=mapped, multipart=True)

    async def cutoutProductBackgroundRemoval(self, params: CutoutProductBackgroundRemovalParams) -> CutoutProductBackgroundRemovalResponse:
        validate_cutoutProductBackgroundRemoval_params(params)
        mapped = map_params(params, CutoutProductBackgroundRemovalParamMap)
        return await self._requester.request('POST', '/api/cutout/general/commodity-background-removal', body=mapped, multipart=True)

    async def cutoutFoodBackgroundRemoval(self, params: CutoutFoodBackgroundRemovalParams) -> CutoutFoodBackgroundRemovalResponse:
        validate_cutoutFoodBackgroundRemoval_params(params)
        mapped = map_params(params, CutoutFoodBackgroundRemovalParamMap)
        return await self._requester.request('POST', '/api/cutout/general/food-background-removal', body=mapped, multipart=True)

    async def cutoutUniversalBackgroundRemoval(self, params: CutoutUniversalBackgroundRemovalParams) -> CutoutUniversalBackgroundRemovalResponse:
        validate_cutoutUniversalBackgroundRemoval_params(params)
        mapped = map_params(params, CutoutUniversalBackgroundRemovalParamMap)
        return await self._requester.request('POST', '/api/cutout/general/universal-background-removal', body=mapped, multipart=True)

    async def cutoutAvatarExtraction(self, params: CutoutAvatarExtractionParams) -> CutoutAvatarExtractionResponse:
        validate_cutoutAvatarExtraction_params(params)
        mapped = map_params(params, CutoutAvatarExtractionParamMap)
        return await self._requester.request('POST', '/api/cutout/portrait/avatar-extraction', body=mapped, multipart=True)

    async def cutoutHairExtraction(self, params: CutoutHairExtractionParams) -> CutoutHairExtractionResponse:
        validate_cutoutHairExtraction_params(params)
        mapped = map_params(params, CutoutHairExtractionParamMap)
        return await self._requester.request('POST', '/api/cutout/portrait/hairstyle-extraction', body=mapped, multipart=True)

    async def cutoutHumanBackgroundRemoval(self, params: CutoutHumanBackgroundRemovalParams) -> CutoutHumanBackgroundRemovalResponse:
        validate_cutoutHumanBackgroundRemoval_params(params)
        mapped = map_params(params, CutoutHumanBackgroundRemovalParamMap)
        return await self._requester.request('POST', '/api/cutout/portrait/portrait-background-removal', body=mapped, multipart=True)
