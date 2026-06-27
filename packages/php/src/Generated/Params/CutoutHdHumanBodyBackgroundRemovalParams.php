<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class CutoutHdHumanBodyBackgroundRemovalParams
{
    public function __construct(
        public readonly FileInput $image,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
        ];
    }
}
