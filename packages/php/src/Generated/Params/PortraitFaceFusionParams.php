<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitFaceFusionParams
{
    public function __construct(
        /** Target image. */
        public readonly FileInput $imageTarget,
        /** Template images. */
        public readonly FileInput $imageTemplate,
        /** Face similarity, where a higher numerical value indicates greater similarity. 0: Consistent with the original template. 1: Maximum similarity with the target image. */
        public readonly ?float $sourceSimilarity = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image_target' => $this->imageTarget,
            'image_template' => $this->imageTemplate,
            'source_similarity' => $this->sourceSimilarity,
        ];
    }
}
