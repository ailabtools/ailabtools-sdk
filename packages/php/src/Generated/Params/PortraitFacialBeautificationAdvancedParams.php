<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitFacialBeautificationAdvancedParams
{
    public function __construct(
        public readonly FileInput $image,
        /** Whitening level: 0 means no whitening, 100 represents the highest level. */
        public readonly ?int $whitening = null,
        /** Skin smoothing level: 0 means no skin smoothing, 100 represents the highest level. */
        public readonly ?int $smoothing = null,
        /** Face slimming level: 0 means no face slimming, 100 represents the highest level. */
        public readonly ?int $faceLifting = null,
        /** Eye enlargement level: 0 means no eye enlargement, 100 represents the highest level. */
        public readonly ?int $eyeEnlarging = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'whitening' => $this->whitening,
            'smoothing' => $this->smoothing,
            'face_lifting' => $this->faceLifting,
            'eye_enlarging' => $this->eyeEnlarging,
        ];
    }
}
