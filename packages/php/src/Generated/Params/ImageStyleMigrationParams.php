<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageStyleMigrationParams
{
    public function __construct(
        /** style image. */
        public readonly FileInput $style,
        /** Content image. */
        public readonly FileInput $major,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'style' => $this->style,
            'major' => $this->major,
        ];
    }
}
