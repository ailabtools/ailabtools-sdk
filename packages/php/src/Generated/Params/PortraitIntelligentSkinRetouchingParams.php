<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitIntelligentSkinRetouchingParams
{
    public function __construct(
        public readonly FileInput $image,
        /** Dermabrasion intensity. The higher the value, the less visible the skin texture. */
        public readonly ?float $retouchDegree = null,
        /** Whitening strength. The higher the value, the whiter the skin. */
        public readonly ?float $whiteningDegree = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'retouch_degree' => $this->retouchDegree,
            'whitening_degree' => $this->whiteningDegree,
        ];
    }
}
