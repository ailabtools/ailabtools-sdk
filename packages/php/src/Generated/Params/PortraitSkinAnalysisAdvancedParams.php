<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitSkinAnalysisAdvancedParams
{
    public function __construct(
        public readonly FileInput $image,
        /** Whether to restrict the quality of faces in incoming images. 0: No face quality control is performed, and skin measurement results are returned as long as the face can be detected. 1: Perform face quality control, if the face quality does not pass it will prompt an error. */
        public readonly ?int $faceQualityControl = null,
        /** The confidence level of the area whether to return acne, occlusion, blemishes and moles. 0: No regional confidence is returned. 1: Returns the regional confidence. */
        public readonly ?int $returnRectConfidence = null,
        /** Enter a comma-separated string containing the type of skin chromatography image to be returned. More Details */
        public readonly ?string $returnMaps = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'face_quality_control' => $this->faceQualityControl,
            'return_rect_confidence' => $this->returnRectConfidence,
            'return_maps' => $this->returnMaps,
        ];
    }
}
