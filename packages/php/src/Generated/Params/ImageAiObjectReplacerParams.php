<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class ImageAiObjectReplacerParams
{
    public function __construct(
        /** Original image. */
        public readonly FileInput $image,
        /** Mask image. */
        public readonly FileInput $mask,
        /** Prompt Content (English only). Please limit the prompt content to 100 English words or fewer. Any content beyond this limit may have minimal impact on the generated result. Use standard vocabulary to avoid failing the review process. */
        public readonly ?string $customPrompt = null,
        /** Sampling steps determine the level of detail in the generated image. A higher value may result in better quality, but it will significantly increase the processing time. */
        public readonly ?int $steps = null,
        /** The degree to which the text description influences the output. */
        public readonly ?float $scale = null,
        /** Random seed, used as the basis for determining the initial state of the diffusion process. It must be a non-negative number (-1 represents a random seed). If the random seed is the same positive integer and all other parameters are identical, the generated image will most likely be consistent. */
        public readonly ?int $seed = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'mask' => $this->mask,
            'custom_prompt' => $this->customPrompt,
            'steps' => $this->steps,
            'scale' => $this->scale,
            'seed' => $this->seed,
        ];
    }
}
