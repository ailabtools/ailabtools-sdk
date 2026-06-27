<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageRemoveObjectsParams
{
    public function __construct(
        /** Original image. */
        public readonly FileInput $image,
        /** Mask image. */
        public readonly FileInput $mask,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'mask' => $this->mask,
        ];
    }
}
