<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class PortraitAIFaceSwapParams
{
    public function __construct(
        /** The image to be modified. The face in this image will be replaced. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $imageTarget,
        /** The image that provides the face to use. - Image format: `JPEG` `JPG` `PNG` - Image size: No more than 5 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $imageTemplate,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image_target" => $this->imageTarget,
            "image_template" => $this->imageTemplate,
        ];
    }
}
