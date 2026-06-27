<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class PortraitAISkinEnhancementAdvancedParams
{
    public function __construct(
        /** - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Smart all-in-one skin beautification. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
        public readonly ?string $smartSkin = null,
        /** Acne and blemish removal. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
        public readonly ?string $acneRemoval = null,
        /** Spot and pigmentation correction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
        public readonly ?string $spotCorrection = null,
        /** Skin brightening and tone enhancement. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
        public readonly ?string $skinBrightening = null,
        /** Skin smoothing and refinement. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
        public readonly ?string $skinSmoothing = null,
        /** Pore and oil control. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
        public readonly ?string $poreControl = null,
        /** Wrinkle and fine-line reduction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
        public readonly ?string $wrinkleReduction = null,
        /** Under-eye correction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
        public readonly ?string $underEyeCorrection = null,
        /** Scar and skin damage reduction. - `0`: No. - `1`: Yes. Allowed values: 0, 1. Default: 0. */
        public readonly ?string $scarReduction = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "smart_skin" => $this->smartSkin,
            "acne_removal" => $this->acneRemoval,
            "spot_correction" => $this->spotCorrection,
            "skin_brightening" => $this->skinBrightening,
            "skin_smoothing" => $this->skinSmoothing,
            "pore_control" => $this->poreControl,
            "wrinkle_reduction" => $this->wrinkleReduction,
            "under_eye_correction" => $this->underEyeCorrection,
            "scar_reduction" => $this->scarReduction,
        ];
    }
}
