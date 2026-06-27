<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImagePhotoEditingParams
{
    public function __construct(
        /** Images that require a style transformation. */
        public readonly FileInput $image,
        /** Reference image. */
        public readonly FileInput $style,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'style' => $this->style,
        ];
    }
}
