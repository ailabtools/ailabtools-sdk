<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImageIntelligentCompositionResponseData
{
    use ResponseValue;

    public function __construct(
        /** Intelligent composition results. */
        /** @var array<mixed>|null */
        public readonly ?array $elements = null,
        /** The horizontal coordinate of the upper-left corner of the output box. */
        public readonly ?int $minX = null,
        /** The horizontal coordinate of the lower-right corner of the output box. */
        public readonly ?int $maxX = null,
        /** The vertical coordinate of the upper-left corner of the output box. */
        public readonly ?int $minY = null,
        /** The lower-right vertical coordinate of the output box. */
        public readonly ?int $maxY = null,
        /** The higher the score, the better the composition. 3.8 or above is recommended as a better composition score. */
        public readonly ?float $score = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            elements: self::arrayValue($payload['elements'] ?? null),
            minX: self::intValue($payload['min_x'] ?? null),
            maxX: self::intValue($payload['max_x'] ?? null),
            minY: self::intValue($payload['min_y'] ?? null),
            maxY: self::intValue($payload['max_y'] ?? null),
            score: self::floatValue($payload['score'] ?? null),
        );
    }
}
