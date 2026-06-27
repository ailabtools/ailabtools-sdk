<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class PortraitAIHalloweenMaskParams
{
    public function __construct(
        /** Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Built-in mask preset. Provide either this field or `image_template`. If both are provided, `mask_style` takes precedence. See [Supported mask styles](/docs/ai-portrait/effects/ai-halloween-mask/api#mask_style). Allowed values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85. */
        public readonly ?string $maskStyle = null,
        /** Reference image for eyeshadow transfer. Provide this field or `mask_style`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly ?FileInput $imageTemplate = null,
        /** Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. */
        public readonly ?string $aspectRatio = null,
    ) {
        if ($this->maskStyle === null && $this->imageTemplate === null) {
            throw new \InvalidArgumentException('At least one of maskStyle, imageTemplate is required');
        }
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "mask_style" => $this->maskStyle,
            "image_template" => $this->imageTemplate,
            "aspect_ratio" => $this->aspectRatio,
        ];
    }
}
