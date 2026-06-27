<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class ImagePhotoToColoringPageParams
{
    public function __construct(
        /** Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Prompt (English only). Max 3000 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
        public readonly ?string $prompt = null,
        /** Output Image Aspect Ratio. Allowed values: A4, auto, 1:1, 2:3, 3:2, 3:4, 4:3, 4:5, 5:4, 9:16, 16:9, 21:9. Default: A4. */
        public readonly ?string $imageSize = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "prompt" => $this->prompt,
            "image_size" => $this->imageSize,
        ];
    }
}
