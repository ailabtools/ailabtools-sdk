<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitTryOnClothesRefinerParams
{
    public function __construct(
        /** Task Type. async: Asynchronous tasks. */
        public readonly string $taskType,
        /** Model image for calling the Try on Clothes API. */
        public readonly FileInput $personImage,
        /** Top clothing image for calling the Try on Clothes API. */
        public readonly FileInput $topGarment,
        /** Result image obtained from calling the Try on Clothes API. */
        public readonly FileInput $coarseImage,
        /** Gender of the person_image. woman: Female. man: Male. */
        public readonly string $gender,
        /** Bottom clothing image for calling the Try on Clothes API. */
        public readonly ?FileInput $bottomGarment = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'task_type' => $this->taskType,
            'person_image' => $this->personImage,
            'top_garment' => $this->topGarment,
            'coarse_image' => $this->coarseImage,
            'gender' => $this->gender,
            'bottom_garment' => $this->bottomGarment,
        ];
    }
}
