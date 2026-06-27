<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitIntelligentBeautificationResponseData
{
    use ResponseValue;

    public function __construct(
        /** Task Type. sync: Synchronous tasks. */
        public readonly ?string $taskType = null,
        /** The result image, returning the Base64 encoding of the image. */
        public readonly ?string $image = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            taskType: self::stringValue($payload['task_type'] ?? null),
            image: self::stringValue($payload['image'] ?? null),
        );
    }
}
