<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImageInvisibleTextWatermarkResponseData
{
    use ResponseValue;

    public function __construct(
        /** The URL address after adding the watermark. */
        public readonly ?string $watermarkImageUrl = null,
        /** Watermark URL address after decoding. */
        public readonly ?string $textImageUrl = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            watermarkImageUrl: self::stringValue($payload['watermark_image_url'] ?? null),
            textImageUrl: self::stringValue($payload['text_image_url'] ?? null),
        );
    }
}
