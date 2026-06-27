<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitIntelligentFaceSlimmingParams
{
    public function __construct(
        public readonly FileInput $image,
        /** Standard strength. The higher the value, the more pronounced the face slimming effect. */
        public readonly ?float $slimDegree = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'slim_degree' => $this->slimDegree,
        ];
    }
}
