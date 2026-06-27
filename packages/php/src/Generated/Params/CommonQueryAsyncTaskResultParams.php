<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

final class CommonQueryAsyncTaskResultParams
{
    public function __construct(
        /** The task_id returned by the asynchronous API. */
        public readonly string $taskId,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'task_id' => $this->taskId,
        ];
    }
}
