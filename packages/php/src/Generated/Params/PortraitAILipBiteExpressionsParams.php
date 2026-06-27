<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class PortraitAILipBiteExpressionsParams
{
    public function __construct(
        /** - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Specifies the number of emoji stickers to generate in a single image. Allowed values: 1, 4, 6, 9. Default: 1. */
        public readonly ?int $gridCount = null,
        /** Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. */
        public readonly ?string $aspectRatio = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "grid_count" => $this->gridCount,
            "aspect_ratio" => $this->aspectRatio,
        ];
    }
}
