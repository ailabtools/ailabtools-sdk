<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitFacialBeautificationParams
{
    public function __construct(
        public readonly FileInput $image,
        /** Sharpness level. A higher value indicates a greater degree of sharpness. */
        public readonly float $sharp,
        /** Smoothness level. A higher value results in a smoother appearance. */
        public readonly float $smooth,
        /** Whitening level. A higher value leads to lighter skin. */
        public readonly float $white,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'sharp' => $this->sharp,
            'smooth' => $this->smooth,
            'white' => $this->white,
        ];
    }
}
