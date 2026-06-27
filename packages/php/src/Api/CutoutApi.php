<?php

declare(strict_types=1);

namespace AILabTools\Api;

use AILabTools\Http\Requester;
use AILabTools\Generated\Params\CutoutClothingBackgroundRemovalParams;
use AILabTools\Generated\Response\CutoutClothingBackgroundRemovalResponse;
use AILabTools\Generated\Params\CutoutProductBackgroundRemovalParams;
use AILabTools\Generated\Response\CutoutProductBackgroundRemovalResponse;
use AILabTools\Generated\Params\CutoutFoodBackgroundRemovalParams;
use AILabTools\Generated\Response\CutoutFoodBackgroundRemovalResponse;
use AILabTools\Generated\Params\CutoutUniversalBackgroundRemovalParams;
use AILabTools\Generated\Response\CutoutUniversalBackgroundRemovalResponse;
use AILabTools\Generated\Params\CutoutAvatarExtractionParams;
use AILabTools\Generated\Response\CutoutAvatarExtractionResponse;
use AILabTools\Generated\Params\CutoutHairExtractionParams;
use AILabTools\Generated\Response\CutoutHairExtractionResponse;
use AILabTools\Generated\Params\CutoutHumanBackgroundRemovalParams;
use AILabTools\Generated\Response\CutoutHumanBackgroundRemovalResponse;

final class CutoutApi
{
    public function __construct(private readonly Requester $requester)
    {
    }

    public function cutoutClothingBackgroundRemoval(CutoutClothingBackgroundRemovalParams $params): CutoutClothingBackgroundRemovalResponse
    {
        /** @var CutoutClothingBackgroundRemovalResponse */
        return $this->requester->request('POST', '/api/cutout/general/apparel-background-removal', $params->toArray(), true, [CutoutClothingBackgroundRemovalResponse::class, 'fromArray']);
    }

    public function cutoutProductBackgroundRemoval(CutoutProductBackgroundRemovalParams $params): CutoutProductBackgroundRemovalResponse
    {
        /** @var CutoutProductBackgroundRemovalResponse */
        return $this->requester->request('POST', '/api/cutout/general/commodity-background-removal', $params->toArray(), true, [CutoutProductBackgroundRemovalResponse::class, 'fromArray']);
    }

    public function cutoutFoodBackgroundRemoval(CutoutFoodBackgroundRemovalParams $params): CutoutFoodBackgroundRemovalResponse
    {
        /** @var CutoutFoodBackgroundRemovalResponse */
        return $this->requester->request('POST', '/api/cutout/general/food-background-removal', $params->toArray(), true, [CutoutFoodBackgroundRemovalResponse::class, 'fromArray']);
    }

    public function cutoutUniversalBackgroundRemoval(CutoutUniversalBackgroundRemovalParams $params): CutoutUniversalBackgroundRemovalResponse
    {
        /** @var CutoutUniversalBackgroundRemovalResponse */
        return $this->requester->request('POST', '/api/cutout/general/universal-background-removal', $params->toArray(), true, [CutoutUniversalBackgroundRemovalResponse::class, 'fromArray']);
    }

    public function cutoutAvatarExtraction(CutoutAvatarExtractionParams $params): CutoutAvatarExtractionResponse
    {
        /** @var CutoutAvatarExtractionResponse */
        return $this->requester->request('POST', '/api/cutout/portrait/avatar-extraction', $params->toArray(), true, [CutoutAvatarExtractionResponse::class, 'fromArray']);
    }

    public function cutoutHairExtraction(CutoutHairExtractionParams $params): CutoutHairExtractionResponse
    {
        /** @var CutoutHairExtractionResponse */
        return $this->requester->request('POST', '/api/cutout/portrait/hairstyle-extraction', $params->toArray(), true, [CutoutHairExtractionResponse::class, 'fromArray']);
    }

    public function cutoutHumanBackgroundRemoval(CutoutHumanBackgroundRemovalParams $params): CutoutHumanBackgroundRemovalResponse
    {
        /** @var CutoutHumanBackgroundRemovalResponse */
        return $this->requester->request('POST', '/api/cutout/portrait/portrait-background-removal', $params->toArray(), true, [CutoutHumanBackgroundRemovalResponse::class, 'fromArray']);
    }

}
