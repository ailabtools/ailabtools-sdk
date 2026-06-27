<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitLivePhotosParams
{
    public function __construct(
        public readonly FileInput $imageTarget,
        /** Live photo type. 0: Avatar version. 1: Full body version. */
        public readonly ?int $type = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image_target' => $this->imageTarget,
            'type' => $this->type,
        ];
    }
}
