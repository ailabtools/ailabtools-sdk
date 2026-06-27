<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitTryOnClothesProParams
{
    public function __construct(
        /** Task Type. async: Asynchronous tasks. */
        public readonly string $taskType,
        /** Portrait Image. */
        public readonly FileInput $personImage,
        /** Upper Body Clothing Image. */
        public readonly FileInput $topGarment,
        /** Lower Body Clothing Image. If no lower body clothing image is provided, the lower body clothing effect will be randomly generated. If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty. */
        public readonly ?FileInput $bottomGarment = null,
        /** Output Image Resolution. If you need to call **Try on Clothes Refiner** in the future, select -1. -1: Original image resolution. 1024: 576x1024px. 1280: 720x1280px. */
        public readonly ?int $resolution = null,
        /** Whether to Keep the Model's Face. If you need to call **Try on Clothes Refiner** in the future, select true. true: Keep the model's original face. false: Regenerate the model's face. */
        public readonly ?bool $restoreFace = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'task_type' => $this->taskType,
            'person_image' => $this->personImage,
            'top_garment' => $this->topGarment,
            'bottom_garment' => $this->bottomGarment,
            'resolution' => $this->resolution,
            'restore_face' => $this->restoreFace,
        ];
    }
}
