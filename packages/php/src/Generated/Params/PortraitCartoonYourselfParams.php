<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitCartoonYourselfParams
{
    public function __construct(
        public readonly FileInput $image,
        /** Cartoon effect. pixar: Pixar pixar_plus: Pixar Pro 3d_cartoon: 3D cartoon angel: Angel angel_plus: Angel Pro demon: Demon ukiyoe_cartoon: Ukiyo-e amcartoon: American Manga western: Western avatar: Avatar jpcartoon: Japanese Manga (I) jpcartoon_head: Japanese Manga (portrait) hkcartoon: China Comics classic_cartoon: Retro Cartoon tccartoon: Moe Manga anime: Japanese Manga (II) handdrawn: hand-painted sketch: Pencil drawing (I) artstyle: Artistic effects head: Pencil drawing (head) full: Pencil drawing (II) 3d_game: 3D game effects */
        public readonly string $type,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'type' => $this->type,
        ];
    }
}
