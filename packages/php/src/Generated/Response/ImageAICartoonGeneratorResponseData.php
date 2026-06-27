<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class ImageAICartoonGeneratorResponseData
{
    use ResponseValue;

    public function __construct(
        /** Task Type. async: Asynchronous tasks. */
        public readonly ?string $taskType = null,
        /** Asynchronous task ID. **Please use this field when calling the Querying Async Task Results API.** */
        public readonly ?string $taskId = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            taskType: self::stringValue($payload['task_type'] ?? null),
            taskId: self::stringValue($payload['task_id'] ?? null),
        );
    }
}
