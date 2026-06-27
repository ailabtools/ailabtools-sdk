<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitHairstyleEditingParams
{
    public function __construct(
        public readonly FileInput $imageTarget,
        /** Hairstyle type. 0: Bangs. 1: Long hair. 2: Bangs with long hair. 3: Increase the number of hair. 901: Straight hair. */
        public readonly ?int $hairType = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image_target' => $this->imageTarget,
            'hair_type' => $this->hairType,
        ];
    }
}
