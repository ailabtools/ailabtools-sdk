<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitLipsColorChangerParams
{
    public function __construct(
        public readonly FileInput $image,
        /** Lip Color Info. You can enter up to 3 lip_color_info to enable changing the lip color for up to 3 faces in a graph. Description */
        public readonly string $lipColorInfos,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'lip_color_infos' => $this->lipColorInfos,
        ];
    }
}
