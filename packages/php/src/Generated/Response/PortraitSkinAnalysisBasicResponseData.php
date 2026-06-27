<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitSkinAnalysisBasicResponseData
{
    use ResponseValue;

    public function __construct(
        /** Interference factors affecting the calculation results. imporper_headpose: Improper head angle (Judgment condition roll,yaw,pitch exceeds [-45,45]). */
        /** @var array<mixed>|null */
        public readonly ?array $warning = null,
        /** The position of the face rectangle box. */
        /** @var array<string, mixed>|null */
        public readonly ?array $faceRectangle = null,
        /** The vertical coordinate of the pixel point in the upper-left corner of the rectangle box. */
        public readonly ?float $top = null,
        /** The horizontal coordinate of the pixel point in the upper-left corner of the rectangle. */
        public readonly ?float $left = null,
        /** The width of the rectangle box. */
        public readonly ?float $width = null,
        /** The height of the rectangle box. */
        public readonly ?float $height = null,
        /** Results of face skin analysis. */
        /** @var array<string, mixed>|null */
        public readonly ?array $result = null,
        /** Results of the double eyelid test on the left eye. */
        /** @var array<string, mixed>|null */
        public readonly ?array $leftEyelids = null,
        /** Type. 0: Single eyelids 1: Parallel Double Eyelids 2: Scalloped Double Eyelids */
        public readonly ?int $value = null,
        /** Confidence. */
        public readonly ?float $confidence = null,
        /** Results of the double eyelid test on the right eye. */
        /** @var array<string, mixed>|null */
        public readonly ?array $rightEyelids = null,
        /** Eye bag test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $eyePouch = null,
        /** Dark circles test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $darkCircle = null,
        /** Results of the head-lift test. */
        /** @var array<string, mixed>|null */
        public readonly ?array $foreheadWrinkle = null,
        /** Fishtail test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $crowsFeet = null,
        /** Results of the eye fine lines test. */
        /** @var array<string, mixed>|null */
        public readonly ?array $eyeFinelines = null,
        /** Results of the interbrow line test. */
        /** @var array<string, mixed>|null */
        public readonly ?array $glabellaWrinkle = null,
        /** Results of the forehead line test. */
        /** @var array<string, mixed>|null */
        public readonly ?array $nasolabialFold = null,
        /** Skin texture test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $skinType = null,
        /** The confidence level of each classification. */
        /** @var array<string, mixed>|null */
        public readonly ?array $details = null,
        /** Forehead pore test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $poresForehead = null,
        /** Results of the left cheek pore test. */
        /** @var array<string, mixed>|null */
        public readonly ?array $poresLeftCheek = null,
        /** Results of the right cheek pore test. */
        /** @var array<string, mixed>|null */
        public readonly ?array $poresRightCheek = null,
        /** Chin pore test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $poresJaw = null,
        /** Blackhead test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $blackhead = null,
        /** Acne test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $acne = null,
        /** Mole test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $mole = null,
        /** Spot detection results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $skinSpot = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            warning: self::arrayValue($payload['warning'] ?? null),
            faceRectangle: self::mapValue($payload['face_rectangle'] ?? null),
            top: self::floatValue($payload['top'] ?? null),
            left: self::floatValue($payload['left'] ?? null),
            width: self::floatValue($payload['width'] ?? null),
            height: self::floatValue($payload['height'] ?? null),
            result: self::mapValue($payload['result'] ?? null),
            leftEyelids: self::mapValue($payload['left_eyelids'] ?? null),
            value: self::intValue($payload['value'] ?? null),
            confidence: self::floatValue($payload['confidence'] ?? null),
            rightEyelids: self::mapValue($payload['right_eyelids'] ?? null),
            eyePouch: self::mapValue($payload['eye_pouch'] ?? null),
            darkCircle: self::mapValue($payload['dark_circle'] ?? null),
            foreheadWrinkle: self::mapValue($payload['forehead_wrinkle'] ?? null),
            crowsFeet: self::mapValue($payload['crows_feet'] ?? null),
            eyeFinelines: self::mapValue($payload['eye_finelines'] ?? null),
            glabellaWrinkle: self::mapValue($payload['glabella_wrinkle'] ?? null),
            nasolabialFold: self::mapValue($payload['nasolabial_fold'] ?? null),
            skinType: self::mapValue($payload['skin_type'] ?? null),
            details: self::mapValue($payload['details'] ?? null),
            poresForehead: self::mapValue($payload['pores_forehead'] ?? null),
            poresLeftCheek: self::mapValue($payload['pores_left_cheek'] ?? null),
            poresRightCheek: self::mapValue($payload['pores_right_cheek'] ?? null),
            poresJaw: self::mapValue($payload['pores_jaw'] ?? null),
            blackhead: self::mapValue($payload['blackhead'] ?? null),
            acne: self::mapValue($payload['acne'] ?? null),
            mole: self::mapValue($payload['mole'] ?? null),
            skinSpot: self::mapValue($payload['skin_spot'] ?? null),
        );
    }
}
