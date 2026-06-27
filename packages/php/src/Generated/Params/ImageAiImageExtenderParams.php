<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageAiImageExtenderParams
{
    public function __construct(
        /** Original image. */
        public readonly FileInput $image,
        /** Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process. */
        public readonly ?string $customPrompt = null,
        /** Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time. */
        public readonly ?int $steps = null,
        /** The smaller the value, the closer it is to the original image. */
        public readonly ?float $strength = null,
        /** The degree to which the text description influences the output. */
        public readonly ?float $scale = null,
        /** Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent. */
        public readonly ?int $seed = null,
        /** Maximum output height. Resized to the specified dimensions as a fallback after the image expansion process. */
        public readonly ?int $maxHeight = null,
        /** Maximum output width. Resized to the specified dimensions as a fallback after the image expansion process. */
        public readonly ?int $maxWidth = null,
        /** Upward expansion ratio. */
        public readonly ?float $top = null,
        /** Downward expansion ratio. */
        public readonly ?float $bottom = null,
        /** Leftward expansion ratio. */
        public readonly ?float $left = null,
        /** Rightward expansion ratio. */
        public readonly ?float $right = null,
        /** Mask image. */
        public readonly ?FileInput $mask = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'custom_prompt' => $this->customPrompt,
            'steps' => $this->steps,
            'strength' => $this->strength,
            'scale' => $this->scale,
            'seed' => $this->seed,
            'max_height' => $this->maxHeight,
            'max_width' => $this->maxWidth,
            'image' => $this->image,
            'top' => $this->top,
            'bottom' => $this->bottom,
            'left' => $this->left,
            'right' => $this->right,
            'mask' => $this->mask,
        ];
    }
}
