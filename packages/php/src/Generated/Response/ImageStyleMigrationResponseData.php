<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImageStyleMigrationResponseData
{
    use ResponseValue;

    public function __construct(
        /** URL address of the result image for stylization, image format: PNG. */
        public readonly ?string $url = null,
        /** The result of keeping the portrait unchanged and stylizing the rest. If there is no figure in the input major content map, the empty string is returned here. */
        public readonly ?string $majorUrl = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            url: self::stringValue($payload['url'] ?? null),
            majorUrl: self::stringValue($payload['major_url'] ?? null),
        );
    }
}
