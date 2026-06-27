<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitFacialLandmarksParams
{
    public function __construct(
        public readonly FileInput $image,
        /** The maximum number of faces to process. The default value is 1 (only the face with the largest area in the image is detected). */
        public readonly ?int $maxFaceNum = null,
        /** Returns more information about the face (by default only face_token, face frame, probability and rotation angle are returned). age: Age information. gender: Gender information. landmark4: 4 feature points. landmark72: 72 feature points. landmark150: 150 feature points. landmark201: 201 feature points. */
        public readonly ?string $faceField = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'max_face_num' => $this->maxFaceNum,
            'face_field' => $this->faceField,
        ];
    }
}
