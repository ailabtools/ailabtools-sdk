<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class ImageAINailArtParams
{
    public function __construct(
        /** Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Nail Name (English only). Max 500 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
        public readonly string $nailName,
        /** Nail Description (English only). Max 1000 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
        public readonly string $nailDesc,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "nail_name" => $this->nailName,
            "nail_desc" => $this->nailDesc,
        ];
    }
}
