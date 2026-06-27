<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImageCompositionAestheticsScoreResponseData
{
    use ResponseValue;

    public function __construct(
        /** The higher the score, the better the composition, with a recommended score of 3.8 or higher being the better composition score. */
        public readonly ?float $score = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            score: self::floatValue($payload['score'] ?? null),
        );
    }
}
