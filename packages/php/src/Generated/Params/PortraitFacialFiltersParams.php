<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitFacialFiltersParams
{
    public function __construct(
        public readonly FileInput $image,
        /** Picture style. More Details */
        public readonly string $resourceType,
        /** Filter intensity. */
        public readonly float $strength,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'resource_type' => $this->resourceType,
            'strength' => $this->strength,
        ];
    }
}
