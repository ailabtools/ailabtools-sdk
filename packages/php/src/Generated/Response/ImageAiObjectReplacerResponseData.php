<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImageAiObjectReplacerResponseData
{
    use ResponseValue;

    public function __construct(
        /** Output the processed image as a Base64 array (single image). */
        /** @var list<string>|null */
        public readonly ?array $binaryDataBase64 = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            binaryDataBase64: self::stringList($payload['binary_data_base64'] ?? null),
        );
    }
}
