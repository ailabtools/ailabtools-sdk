<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitFacialBeautificationAdvancedResponseData
{
    use ResponseValue;

    public function __construct(
        /** Returns the base64 data of the processed image. */
        public readonly ?string $resultImage = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            resultImage: self::stringValue($payload['result_image'] ?? null),
        );
    }
}
