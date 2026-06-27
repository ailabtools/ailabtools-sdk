<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class PortraitAIFaceRatingParams
{
    public function __construct(
        /** - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. */
        public readonly ?string $aspectRatio = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "aspect_ratio" => $this->aspectRatio,
        ];
    }
}
