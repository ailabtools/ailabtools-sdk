<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitFaceAttributeEditingParams
{
    public function __construct(
        public readonly FileInput $image,
        /** Face editing method. TO_KID: V1 version becomes a child. TO_OLD: V1 version becomes old man. TO_FEMALE: V1 version becomes girls. TO_MALE: V1 version becomes boys. V2_AGE: V2 version age change. V2_GENDER: v2 version gender shift. */
        public readonly string $actionType,
        /** Image quality (image field image quality). Please select the appropriate option based on quality information such as masking, lighting, blurriness, and integrity of the face. If selecting a higher quality causes the image to be unprocessable, please select a lower quality to try. NONE: No control is performed. LOW: Lower quality requirements. NORMAL: General quality requirements. HIGH: Higher quality requirements. More Details */
        public readonly ?string $qualityControl = null,
        /** When multiple faces are detected in the image, use this parameter to specify the position of the face to be edited in the image, or default to the largest face in the image if not specified. More Details */
        public readonly ?string $faceLocation = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'action_type' => $this->actionType,
            'quality_control' => $this->qualityControl,
            'face_location' => $this->faceLocation,
        ];
    }
}
