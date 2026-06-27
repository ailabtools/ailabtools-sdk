<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImageInvisibleImageWatermarkResponseData
{
    use ResponseValue;

    public function __construct(
        /** The URL address after adding the watermark. */
        public readonly ?string $watermarkImageUrl = null,
        /** Watermark URL address after decoding. */
        public readonly ?string $logoUrl = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            watermarkImageUrl: self::stringValue($payload['watermark_image_url'] ?? null),
            logoUrl: self::stringValue($payload['logo_url'] ?? null),
        );
    }
}
