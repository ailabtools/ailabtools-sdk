<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class CutoutClothingBackgroundRemovalParams
{
    public function __construct(
        public readonly FileInput $image,
        /** 0 */
        public readonly ?int $outMode = null,
        /** Clothing categories. Multiple values can be submitted at once, separated by commas (,). tops: Tops. coat: Coat. skirt: Skirt. pants: Pants. bag: Bag. shoes: Shoes. hat: Hat. */
        public readonly ?string $clothClass = null,
        /** Specify the desired image format for the output. whiteBK: Returns an image with a white background. mask: Returns a single-channel mask. If not specified, a four-channel PNG image will be returned. */
        public readonly ?string $returnForm = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'out_mode' => $this->outMode,
            'cloth_class' => $this->clothClass,
            'return_form' => $this->returnForm,
        ];
    }
}
