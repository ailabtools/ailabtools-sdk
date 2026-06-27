<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitIntelligentSkinRetouchingResponseData
{
    use ResponseValue;

    public function __construct(
        /** Resulting image URL address. */
        public readonly ?string $imageUrl = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            imageUrl: self::stringValue($payload['image_url'] ?? null),
        );
    }
}
