<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitHairstyleEditingProParams
{
    public function __construct(
        /** Task Type. async: Asynchronous tasks. */
        public readonly string $taskType,
        /** Main image. */
        public readonly FileInput $image,
        /** Hairstyle. More Details */
        public readonly string $hairStyle,
        /** Color. More Details */
        public readonly ?string $color = null,
        /** Returns the number of images. */
        public readonly ?int $imageSize = null,
        /** Masked Image. If left blank, a masked image will be generated automatically. The white portion of the masked image is the editable area, while the black portion remains unchanged. For example, by using the white area of the mask to cover a person's face, the face will remain unaltered, and other parts will be generated automatically. */
        public readonly ?FileInput $mask = null,
        /** Whether to add bangs to the resulting image. This parameter is ineffective when the hairstyle has no bangs or when bangs are mandatory. Parameter Validity Explanation 0: No. 1: Yes. Parameter Effect Comparison */
        public readonly ?int $bangs = null,
        /** Generation mode. Please enable this parameter based on the original hairstyle. 1: Head-only mode. More suitable for short hair. 2: Full-image generation mode. More suitable for long hair; use this mode when the original image features shoulder-length or longer hair. Parameter Effect Comparison */
        public readonly ?int $mode = null,
        /** Reference Original Hairstyle. Enabling this parameter will make changes to the hairstyle based on the original hairstyle, resulting in minor alterations. Please do not enable this parameter if changing from short hair to long hair or from long hair to short hair. 0: No. 1: Yes. Parameter Effect Comparison */
        public readonly ?int $reference = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'task_type' => $this->taskType,
            'image' => $this->image,
            'hair_style' => $this->hairStyle,
            'color' => $this->color,
            'image_size' => $this->imageSize,
            'mask' => $this->mask,
            'bangs' => $this->bangs,
            'mode' => $this->mode,
            'reference' => $this->reference,
        ];
    }
}
