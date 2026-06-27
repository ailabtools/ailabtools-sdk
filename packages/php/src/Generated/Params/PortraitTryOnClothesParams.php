<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitTryOnClothesParams
{
    public function __construct(
        /** Task Type. async: Asynchronous tasks. */
        public readonly string $taskType,
        /** Portrait image. */
        public readonly FileInput $personImage,
        /** Clothing image. */
        public readonly FileInput $clothesImage,
        /** Clothing Types. upper_body: Upper body clothing. lower_body: Lower body clothing. full_body: Full body clothing. */
        public readonly string $clothesType,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'task_type' => $this->taskType,
            'person_image' => $this->personImage,
            'clothes_image' => $this->clothesImage,
            'clothes_type' => $this->clothesType,
        ];
    }
}
