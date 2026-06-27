<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageErasureParams
{
    public function __construct(
        /** The image to be erased. */
        public readonly FileInput $image,
        /** Mask image. */
        public readonly FileInput $userMask,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'user_mask' => $this->userMask,
        ];
    }
}
