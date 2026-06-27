<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageLosslessEnlargementParams
{
    public function __construct(
        public readonly FileInput $image,
        /** Magnification. */
        public readonly ?int $upscaleFactor = null,
        /** Image output mode. base: Normal mode, i.e. stable super-resolution effect. enhancement: Enhancement mode, which has a more prominent enhancement effect than the normal mode, further improving the clarity and sharpness of the output image. */
        public readonly ?string $mode = null,
        /** Output image format. **Note:** If the input image is in RGBA format, the output will be forced to png to preserve both RGBA format and alpha channel accuracy. If the output image resolution exceeds 3840x2160, the output format will be automatically set to jpg. */
        public readonly ?string $outputFormat = null,
        /** Quality factor of the output image, where a higher value corresponds to higher quality. Only applicable when output_format=jpg. */
        public readonly ?int $outputQuality = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'upscale_factor' => $this->upscaleFactor,
            'mode' => $this->mode,
            'output_format' => $this->outputFormat,
            'output_quality' => $this->outputQuality,
        ];
    }
}
