<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class ImageAIEmojiGeneratorParams
{
    public function __construct(
        /** Original image. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Expression (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
        public readonly string $expression,
        /** Style (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
        public readonly string $style,
        /** Scene (English only). Max 100 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
        public readonly string $scene,
        /** Filler Text (English only). Max 20 characters; extra text will be automatically truncated. Use standard vocabulary to pass review. */
        public readonly ?string $filler = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "expression" => $this->expression,
            "style" => $this->style,
            "scene" => $this->scene,
            "filler" => $this->filler,
        ];
    }
}
