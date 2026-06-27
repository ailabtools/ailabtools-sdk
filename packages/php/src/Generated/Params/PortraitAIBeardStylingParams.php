<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;
use AILabTools\Http\FileInput;

final class PortraitAIBeardStylingParams
{
    public function __construct(
        /** - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly FileInput $image,
        /** Built-in beard preset. Provide this field or `image_template`. If both are provided, `beard` takes precedence. See [Supported beard values](/docs/ai-portrait/editing/ai-beard-styling/api#beard). Allowed values: FullBeardClassic, CorporateBeard, Garibaldi, Verdi, FullBeardTapered, VanDyke, Bandholz, VanDykeRefined, Goatee, ExtendedGoatee, Balbo, AnchorBeardClean, DucktailBeardPointed, AnchorBeardFull, DucktailBeardFull, HeavyStubble, ChevronMoustache, HandlebarMoustache, ImperialMoustache, CircleBeard, ChinStrap, MuttonChops, SoulPatch, PetiteGoatee. */
        public readonly ?string $beard = null,
        /** Reference image for beard transfer. Provide this field or `beard`. If both are provided, `image_template` is ignored. - Image format: `JPEG` `JPG` `PNG` `WEBP` - Image size: No more than 10 MB. - Image resolution: Less than 4096x4096px. */
        public readonly ?FileInput $imageTemplate = null,
    ) {
        if ($this->beard === null && $this->imageTemplate === null) {
            throw new \InvalidArgumentException('At least one of beard, imageTemplate is required');
        }
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            "image" => $this->image,
            "beard" => $this->beard,
            "image_template" => $this->imageTemplate,
        ];
    }
}
