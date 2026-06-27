<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class PortraitAIHairLossSimulationParams
{
    public function __construct(
        /** - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Hair loss level. See [Supported level values](/docs/ai-portrait/editing/ai-hair-loss-simulation/api#level). Allowed values: man_1, man_2, man_3, man_4, man_5, man_6, man_7, woman_1, woman_2, woman_3, woman_4, woman_5, woman_6, woman_7. */
        public readonly string $level,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "level" => $this->level,
        ];
    }
}
