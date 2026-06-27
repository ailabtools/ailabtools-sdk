<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageInvisibleTextWatermarkParams
{
    public function __construct(
        /** Specifies the calling function. encode_text: Add text watermark using the old version model. encode_text_plus: Add text watermark using the new version model 1. encode_text_bold: Add text watermark using the new version model 2. decode_text: Use the old model to decode the text watermark in the image. decode_text_plus: Use the new version of Model 1 to decode text watermarks in images. decode_text_bold: Use the new version Model 2 to decode the image watermark in the image. */
        public readonly string $functionType,
        /** Original image. */
        public readonly ?FileInput $originImage = null,
        /** Watermark text. */
        public readonly ?string $text = null,
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
            'text' => $this->text,
            'watermark_image' => $this->watermarkImage,
            'output_file_type' => $this->outputFileType,
            'quality_factor' => $this->qualityFactor,
        ];
    }
}
