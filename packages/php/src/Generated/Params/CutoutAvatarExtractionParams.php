<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class CutoutAvatarExtractionParams
{
    public function __construct(
        public readonly FileInput $image,
        /** Specifies the form of the returned image. If not set, the four-channel PNG map is returned. mask: Returns a single channel mask. */
        public readonly ?string $returnForm = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'return_form' => $this->returnForm,
        ];
    }
}
