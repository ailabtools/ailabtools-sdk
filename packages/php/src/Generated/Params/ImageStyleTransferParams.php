<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageStyleTransferParams
{
    public function __construct(
        public readonly FileInput $image,
        /** cartoon: Cartoon style. pencil: Pencil style. color_pencil: Color pencil drawing style. warm: The style of colorful sugar cube oil painting. wave: Oil painting style in surfing in Kanagawa. lavender: Lavender oil painting style. mononoke: Strange oil painting style. scream: Scream oil painting style. gothic: Gothic oil painting style. */
        public readonly string $option,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'option' => $this->option,
        ];
    }
}
