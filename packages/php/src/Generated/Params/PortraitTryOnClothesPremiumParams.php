<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class PortraitTryOnClothesPremiumParams
{
    public function __construct(
        /** Task Type. <li>`async`: Asynchronous tasks.</li> */
        public readonly string $taskType,
        /** Portrait image. */
        public readonly FileInput $personImage,
        /** Upper Body Clothing Image. */
        public readonly FileInput $topGarment,
        /** Output Image Resolution. If you need to call **[Try on Clothes Refiner](https://documenter.getpostman.com/view/26387069/2s93JxqgHE#75de8e09-37dd-4b31-b4f8-33a666cebb2a)** in the future, select `-1`. <li>`-1`: Original image resolution.</li> <li>`1024`: 576x1024px.</li> <li>`1280`: 720x1280px.</li> */
        public readonly ?float $resolution = null,
        /** Whether to Keep the Model’s Face. If you need to call **[Try on Clothes Refiner](https://documenter.getpostman.com/view/26387069/2s93JxqgHE#75de8e09-37dd-4b31-b4f8-33a666cebb2a)** in the future, select `true`. <li>`true`: Keep the model’s original face.</li> <li>`false`: Regenerate the model’s face.</li> */
        public readonly ?bool $restoreFace = null,
        /** Lower Body Clothing Image. <li>If no lower body clothing image is provided, the lower body clothing effect will be randomly generated.</li> <li>If lower body clothing is not needed (e.g., when the upper body garment is a dress), this value should be left empty.</li> */
        public readonly ?FileInput $bottomGarment = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "task_type" => $this->taskType,
            "person_image" => $this->personImage,
            "top_garment" => $this->topGarment,
            "resolution" => $this->resolution,
            "restore_face" => $this->restoreFace,
            "bottom_garment" => $this->bottomGarment,
        ];
    }
}
