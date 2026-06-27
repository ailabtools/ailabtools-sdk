<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class PortraitAIHairColorParams
{
    public function __construct(
        /** - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Hair Color Name (English only). */
        public readonly ?string $name = null,
        /** Hair Color Description (English only). */
        public readonly ?string $desc = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "name" => $this->name,
            "desc" => $this->desc,
        ];
    }
}
