<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImageExposureRatingResponseData
{
    use ResponseValue;

    public function __construct(
        /** Image exposure score, the value range is 0~1. The higher the score, the greater the exposure. */
        public readonly ?float $exposure = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            exposure: self::floatValue($payload['exposure'] ?? null),
        );
    }
}
