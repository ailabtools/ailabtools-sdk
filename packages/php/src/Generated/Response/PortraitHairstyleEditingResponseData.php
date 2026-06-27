<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitHairstyleEditingResponseData
{
    use ResponseValue;

    public function __construct(
        /** The result image, returning the Base64 encoding of the image. */
        public readonly ?string $image = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            image: self::stringValue($payload['image'] ?? null),
        );
    }
}
