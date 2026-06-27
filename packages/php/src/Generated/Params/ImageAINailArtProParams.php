<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class ImageAINailArtProParams
{
    public function __construct(
        /** Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Reference image for guidance. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $referenceImage,
        /** Output resolution. Allowed values: 1K, 2K. Default: 1K. */
        public readonly ?string $resolution = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "reference_image" => $this->referenceImage,
            "resolution" => $this->resolution,
        ];
    }
}
