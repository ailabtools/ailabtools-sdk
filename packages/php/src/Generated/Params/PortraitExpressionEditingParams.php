<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitExpressionEditingParams
{
    public function __construct(
        public readonly FileInput $imageTarget,
        /** Expression type. 0: Big laugh. 1: Pouting. 2: Feel sad. 3: Smile. 100: Opening eyes. */
        public readonly int $serviceChoice,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image_target' => $this->imageTarget,
            'service_choice' => $this->serviceChoice,
        ];
    }
}
