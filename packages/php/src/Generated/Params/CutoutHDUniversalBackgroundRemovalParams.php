<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class CutoutHDUniversalBackgroundRemovalParams
{
    public function __construct(
        /** - Image format: `JPEG` `JPG` `BMP` `PNG` - Image size: No more than 40 MB. - Image resolution: Larger than 32x32px, smaller than 10000x10000px. */
        public readonly FileInput $image,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
        ];
    }
}
