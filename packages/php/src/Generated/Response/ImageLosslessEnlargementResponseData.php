<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImageLosslessEnlargementResponseData
{
    use ResponseValue;

    public function __construct(
        /** URL address of the image after resolution enlargement, image format is PNG. */
        public readonly ?string $url = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            url: self::stringValue($payload['url'] ?? null),
        );
    }
}
