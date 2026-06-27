<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImageDistortionCorrectionResponseData
{
    use ResponseValue;

    public function __construct(
        /** base64 encoded image. */
        public readonly ?string $image = null,
        /** Recover ratio. */
        public readonly ?float $ratio = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            image: self::stringValue($payload['image'] ?? null),
            ratio: self::floatValue($payload['ratio'] ?? null),
        );
    }
}
