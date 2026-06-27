<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageIntelligentCompositionParams
{
    public function __construct(
        public readonly FileInput $image,
        /** The number of output boxes. */
        public readonly ?int $numBoxes = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'num_boxes' => $this->numBoxes,
        ];
    }
}
