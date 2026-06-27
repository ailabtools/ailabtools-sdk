<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitIntelligentBeautificationParams
{
    public function __construct(
        public readonly FileInput $imageTarget,
        /** Multiple-face beauty strategy. When set to 1, beauty enhancement is applied to all faces (it is recommended that the number of faces in the image be less than 18, as too many faces may lead to instability). When set to any other value or not specified, only the largest face is processed. */
        public readonly ?string $multiFace = null,
        /** Beauty level. */
        public readonly ?float $beautyLevel = null,
        /** Task Type. sync: Synchronous tasks. */
        public readonly ?string $taskType = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image_target' => $this->imageTarget,
            'multi_face' => $this->multiFace,
            'beauty_level' => $this->beautyLevel,
            'task_type' => $this->taskType,
        ];
    }
}
