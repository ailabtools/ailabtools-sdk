<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitFacialBeautificationProResponseData
{
    use ResponseValue;

    public function __construct(
        /** Task Type. sync: Synchronous tasks. */
        public readonly ?string $taskType = null,
        /** Returns the base64 data of the processed image. */
        public readonly ?string $result = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            taskType: self::stringValue($payload['task_type'] ?? null),
            result: self::stringValue($payload['result'] ?? null),
        );
    }
}
