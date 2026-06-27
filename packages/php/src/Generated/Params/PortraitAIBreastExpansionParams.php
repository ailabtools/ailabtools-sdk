<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class PortraitAIBreastExpansionParams
{
    public function __construct(
        public readonly FileInput $personImage,
        /** Task Type. <li>`async`: Asynchronous tasks.</li> */
        public readonly ?string $taskType = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "task_type" => $this->taskType,
            "person_image" => $this->personImage,
        ];
    }
}
