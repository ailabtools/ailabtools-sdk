<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitSkinAnalysisProfessionalResponseData
{
    use ResponseValue;

    public function __construct(
        /** Results of side face analysis. More Details */
        public readonly ?string $leftSideResult = null,
        /** Results of side face analysis. More Details */
        public readonly ?string $rightSideResult = null,
        /** Face position. More Details */
        /** @var array<string, mixed>|null */
        public readonly ?array $faceRectangle = null,
        /** Results of face skin analysis. More Details */
        /** @var array<string, mixed>|null */
        public readonly ?array $result = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            leftSideResult: self::stringValue($payload['left_side_result'] ?? null),
            rightSideResult: self::stringValue($payload['right_side_result'] ?? null),
            faceRectangle: self::mapValue($payload['face_rectangle'] ?? null),
            result: self::mapValue($payload['result'] ?? null),
        );
    }
}
