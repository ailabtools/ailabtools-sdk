<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImageAIImageCroppingResponseData
{
    use ResponseValue;

    public function __construct(
        /** The URL address of the image after size transformation. */
        public readonly ?string $url = null,
        /** The coordinate information of the original image data in the generated image. */
        /** @var array<string, mixed>|null */
        public readonly ?array $retainLocation = null,
        /** Outputs the width of the original image after isoscaling according to the specified width. Unit: px. */
        public readonly ?int $width = null,
        /** Outputs the height of the original image after isoscaling according to the specified height. Unit: px. */
        public readonly ?int $height = null,
        /** The y-coordinate of the upper-left corner of the original figure. */
        public readonly ?int $y = null,
        /** The x coordinate of the upper left corner of the original figure. */
        public readonly ?int $x = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            url: self::stringValue($payload['url'] ?? null),
            retainLocation: self::mapValue($payload['retain_location'] ?? null),
            width: self::intValue($payload['width'] ?? null),
            height: self::intValue($payload['height'] ?? null),
            y: self::intValue($payload['y'] ?? null),
            x: self::intValue($payload['x'] ?? null),
        );
    }
}
