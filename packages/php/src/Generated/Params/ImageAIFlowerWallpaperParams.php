<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
final class ImageAIFlowerWallpaperParams
{
    public function __construct(
        /** User name to display in the wallpaper (English only). Default: AUTO. */
        public readonly ?string $name = null,
        /** Flower elements and bouquet composition description (English only). Default: AUTO. */
        public readonly ?string $flowerElements = null,
        /** Artwork style for the generated wallpaper (English only). Default: soft watercolor floral illustration. */
        public readonly ?string $style = null,
        /** Background style or color theme for the wallpaper (English only). Default: pastel gradient background. */
        public readonly ?string $background = null,
        /** Output Image Aspect Ratio. Allowed values: auto, 1:1, 3:4, 4:3, 9:16, 16:9. Default: auto. */
        public readonly ?string $aspectRatio = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "name" => $this->name,
            "flower_elements" => $this->flowerElements,
            "style" => $this->style,
            "background" => $this->background,
            "aspect_ratio" => $this->aspectRatio,
        ];
    }
}
