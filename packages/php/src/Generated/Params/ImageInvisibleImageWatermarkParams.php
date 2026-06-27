<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageInvisibleImageWatermarkParams
{
    public function __construct(
        /** Specifies the calling function. encode_pic: Add image watermark using the old model. encode_pic_plus: Add image watermark with new version model 1. encode_pic_bold: Add image watermark with new version model 2. decode_pic: Use the old model to decode the image watermark in the image. decode_pic_plus: Use the new version Model 1 to decode the image watermark in the image. decode_pic_bold: Use the new version Model 2 to decode the image watermark in the image. */
        public readonly string $functionType,
        /** Original image. */
        public readonly ?FileInput $originImage = null,
        /** Watermark image. */
        public readonly ?FileInput $logo = null,
        /** Composite image with watermark. */
        public readonly ?FileInput $watermarkImage = null,
        /** Output format. */
        public readonly ?string $outputFileType = null,
        /** Quality factor for jpg output. */
        public readonly ?int $qualityFactor = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'function_type' => $this->functionType,
            'origin_image' => $this->originImage,
            'logo' => $this->logo,
            'watermark_image' => $this->watermarkImage,
            'output_file_type' => $this->outputFileType,
            'quality_factor' => $this->qualityFactor,
        ];
    }
}
