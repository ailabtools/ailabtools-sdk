<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class CutoutHairExtractionResponseData
{
    use ResponseValue;

    public function __construct(
        /** The keying result of each child element. */
        /** @var array<mixed>|null */
        public readonly ?array $elements = null,
        /** Resulting image URL address. */
        public readonly ?string $imageUrl = null,
        /** The width of the result map. */
        public readonly ?int $width = null,
        /** The height of the resultant graph. */
        public readonly ?int $height = null,
        /** Top left x-coordinate. */
        public readonly ?int $x = null,
        /** Top left y-coordinate. */
        public readonly ?int $y = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            elements: self::arrayValue($payload['elements'] ?? null),
            imageUrl: self::stringValue($payload['image_url'] ?? null),
            width: self::intValue($payload['width'] ?? null),
            height: self::intValue($payload['height'] ?? null),
            x: self::intValue($payload['x'] ?? null),
            y: self::intValue($payload['y'] ?? null),
        );
    }
}
