<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImagePhotoEditingResponseData
{
    use ResponseValue;

    public function __construct(
        /** The resulting image after performing the style transformation. */
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
