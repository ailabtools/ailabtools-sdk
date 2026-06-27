<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageAIImageCroppingParams
{
    public function __construct(
        public readonly FileInput $image,
        /** The width of the target. Unit: px. */
        public readonly int $width,
        /** The height of the target. Unit: px. */
        public readonly int $height,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'width' => $this->width,
            'height' => $this->height,
        ];
    }
}
