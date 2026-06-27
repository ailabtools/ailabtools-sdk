<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class CommonQueryAsyncTaskResultResponseData
{
    use ResponseValue;

    public function __construct(
        /** Asynchronous task status. 0: The task is queued. 1: Asynchronous processing. 2: Processing was successful. */
        public readonly ?int $taskStatus = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            taskStatus: self::intValue($payload['task_status'] ?? null),
        );
    }
}
