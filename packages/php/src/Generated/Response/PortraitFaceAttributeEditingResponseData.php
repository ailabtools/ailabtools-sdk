<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitFaceAttributeEditingResponseData
{
    use ResponseValue;

    public function __construct(
        /** The content of the result data returned. */
        /** @var array<string, mixed>|null */
        public readonly ?array $result = null,
        /** The BASE64 value of the edited image. */
        public readonly ?string $image = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            result: self::mapValue($payload['result'] ?? null),
            image: self::stringValue($payload['image'] ?? null),
        );
    }
}
