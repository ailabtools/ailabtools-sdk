<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageColorEnhancementParams
{
    public function __construct(
        public readonly FileInput $image,
        /** The format of the output image. */
        public readonly string $outputFormat,
        /** Color mixing mode. LogC: Suitable for gray film (low contrast raw map) input, adjust the image color perception substantially to restore the color texture of the SDR domain. Rec709: Suitable for images taken under general conditions, appropriate to enhance the image brightness, saturation, etc., the adjustment range is more conservative. ln17_256: Suitable for images taken under general conditions, drastically adjusts image brightness, saturation, contrast, and improves color quality. */
        public readonly string $mode,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'output_format' => $this->outputFormat,
            'mode' => $this->mode,
        ];
    }
}
