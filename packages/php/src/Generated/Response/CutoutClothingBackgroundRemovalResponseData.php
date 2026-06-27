<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class CutoutClothingBackgroundRemovalResponseData
{
    use ResponseValue;

    public function __construct(
        /** Returns an array of elements. */
        /** @var array<mixed>|null */
        public readonly ?array $elements = null,
        /** Returns the keying result image URL address. */
        public readonly ?string $imageUrl = null,
        /** Return the URL corresponding to the clothing category based on the input cloth_class. */
        /** @var array<string, mixed>|null */
        public readonly ?array $classUrl = null,
        /** Tops URL. */
        public readonly ?string $tops = null,
        /** Coat URL. */
        public readonly ?string $coat = null,
        /** Skirt URL. */
        public readonly ?string $skirt = null,
        /** Pants URL. */
        public readonly ?string $pants = null,
        /** Bag URL. */
        public readonly ?string $bag = null,
        /** Shoes URL. */
        public readonly ?string $shoes = null,
        /** Hat URL. */
        public readonly ?string $hat = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            elements: self::arrayValue($payload['elements'] ?? null),
            imageUrl: self::stringValue($payload['image_url'] ?? null),
            classUrl: self::mapValue($payload['class_url'] ?? null),
            tops: self::stringValue($payload['tops'] ?? null),
            coat: self::stringValue($payload['coat'] ?? null),
            skirt: self::stringValue($payload['skirt'] ?? null),
            pants: self::stringValue($payload['pants'] ?? null),
            bag: self::stringValue($payload['bag'] ?? null),
            shoes: self::stringValue($payload['shoes'] ?? null),
            hat: self::stringValue($payload['hat'] ?? null),
        );
    }
}
