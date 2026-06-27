<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

use AILabTools\Http\FileInput;

final class PortraitSkinAnalysisProfessionalParams
{
    public function __construct(
        /** Main Image. */
        public readonly FileInput $image,
        /** Side face picture.(Left) */
        public readonly ?FileInput $leftSideImage = null,
        /** Side face picture.(Right) */
        public readonly ?FileInput $rightSideImage = null,
        /** The type of skin problem detection mapping image to be returned. If the corresponding element parameter is passed in, the interface will return an image of the original size, which you can subsequently overlay with the original image to see the results. Use commas to separate multiple types. More Details */
        public readonly ?string $returnMaps = null,
        /** The type of skin problem detection mapping image to be returned. Use commas to separate multiple types. More Details */
        public readonly ?string $returnMarks = null,
        /** Customize the color. More Details */
        public readonly ?string $roiOutlineColor = null,
        /** The side face information that needs to be returned. Use commas to separate multiple types. More Details */
        public readonly ?string $returnSideResults = null,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'image' => $this->image,
            'left_side_image' => $this->leftSideImage,
            'right_side_image' => $this->rightSideImage,
            'return_maps' => $this->returnMaps,
            'return_marks' => $this->returnMarks,
            'roi_outline_color' => $this->roiOutlineColor,
            'return_side_results' => $this->returnSideResults,
        ];
    }
}
