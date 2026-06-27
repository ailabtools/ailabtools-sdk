<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageAICartoonGeneratorParams
{
    public function __construct(
        /** Task Type. async: Asynchronous tasks. */
        public readonly string $taskType,
        public readonly FileInput $image,
        /** Style. Range of values */
        public readonly string $type,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'task_type' => $this->taskType,
            'image' => $this->image,
            'type' => $this->type,
        ];
    }
}
