<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class PortraitAIEyeshadowTryOnParams
{
    public function __construct(
        /** Source image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Built-in eyeshadow preset. Provide this field or `image_template`. If both are provided, `eyeshadow_style` takes precedence. See [Supported eyeshadow styles](/docs/ai-portrait/editing/ai-eyeshadow/api#eyeshadow_style). Allowed values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36. */
        public readonly ?string $eyeshadowStyle = null,
        /** Reference image for eyeshadow transfer. Provide this field or `eyeshadow_style`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly ?FileInput $imageTemplate = null,
        /** Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. */
        public readonly ?string $aspectRatio = null,
    ) {
        if ($this->eyeshadowStyle === null && $this->imageTemplate === null) {
            throw new \InvalidArgumentException('At least one of eyeshadowStyle, imageTemplate is required');
        }
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "eyeshadow_style" => $this->eyeshadowStyle,
            "image_template" => $this->imageTemplate,
            "aspect_ratio" => $this->aspectRatio,
        ];
    }
}
