<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitSkinAnalysisAdvancedResponseData
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
        /** Skin color test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $skinColor = null,
        /** Skin color. 0: Transparent white. 1: White. 2: Naturally. 3: Wheat. 4: Dark. */
        public readonly ?int $value = null,
        /** Confidence. */
        public readonly ?float $confidence = null,
        /** Returns skin color classification information based on the ITA (Individual Typology Angle) standard. **NOTE** */
        /** @var array<string, mixed>|null */
        public readonly ?array $skintoneIta = null,
        /** Angle value. */
        public readonly ?float $iTA = null,
        /** Classified according to the skin tone of ITA. 0: Very light. 1: Light. 2: Intermediate. 3: Tan. 4: Brown. 5: Dark. 6: Abnormal color values that may be caused by weak lighting conditions or overexposure. */
        public readonly ?int $skintone = null,
        /** Returns skin tone classification information based on HA (Hue Angle). **NOTE** */
        /** @var array<string, mixed>|null */
        public readonly ?array $skinHueHa = null,
        /** HA angle value. */
        public readonly ?float $hA = null,
        /** Skin age test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $skinAge = null,
        /** Results of the double eyelid test on the left eye. */
        /** @var array<string, mixed>|null */
        public readonly ?array $leftEyelids = null,
        /** Results of the double eyelid test on the right eye. */
        /** @var array<string, mixed>|null */
        public readonly ?array $rightEyelids = null,
        /** Eye bag test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $eyePouch = null,
        /** Severity of puffiness under the eyes (return when puffiness test result is 1) */
        /** @var array<string, mixed>|null */
        public readonly ?array $eyePouchSeverity = null,
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
        /** Severity of the forehead lines (returned when the result of the forehead line test is 1) */
        /** @var array<string, mixed>|null */
        public readonly ?array $nasolabialFoldSeverity = null,
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
        /** The location of each pimple box. */
        /** @var array<mixed>|null */
        public readonly ?array $rectangle = null,
        /** Mole test results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $mole = null,
        /** Closure returns the result. */
        /** @var array<string, mixed>|null */
        public readonly ?array $closedComedones = null,
        /** Spot detection results. */
        /** @var array<string, mixed>|null */
        public readonly ?array $skinSpot = null,
        /** Returns the skin chromatography visualization image set in the entry (return_maps). */
        /** @var array<string, mixed>|null */
        public readonly ?array $faceMaps = null,
        /** Red zone map. jpeg images for base64. */
        public readonly ?string $redArea = null,
        /** The sensitivity of the human face within the photo. This return value must be used with the red area map, you need to set the return red area map ("red_area") in the input parameter return_maps first. */
        /** @var array<string, mixed>|null */
        public readonly ?array $sensitivity = null,
        /** Sensitive redness areas account for the proportion of cheeks and T-zone. */
        public readonly ?float $sensitivityArea = null,
        /** The intensity of redness in sensitive areas. */
        public readonly ?float $sensitivityIntensity = null,
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
            skinColor: self::mapValue($payload['skin_color'] ?? null),
            value: self::intValue($payload['value'] ?? null),
            confidence: self::floatValue($payload['confidence'] ?? null),
            skintoneIta: self::mapValue($payload['skintone_ita'] ?? null),
            iTA: self::floatValue($payload['ITA'] ?? null),
            skintone: self::intValue($payload['skintone'] ?? null),
            skinHueHa: self::mapValue($payload['skin_hue_ha'] ?? null),
            hA: self::floatValue($payload['HA'] ?? null),
            skinAge: self::mapValue($payload['skin_age'] ?? null),
            leftEyelids: self::mapValue($payload['left_eyelids'] ?? null),
            rightEyelids: self::mapValue($payload['right_eyelids'] ?? null),
            eyePouch: self::mapValue($payload['eye_pouch'] ?? null),
            eyePouchSeverity: self::mapValue($payload['eye_pouch_severity'] ?? null),
            darkCircle: self::mapValue($payload['dark_circle'] ?? null),
            foreheadWrinkle: self::mapValue($payload['forehead_wrinkle'] ?? null),
            crowsFeet: self::mapValue($payload['crows_feet'] ?? null),
            eyeFinelines: self::mapValue($payload['eye_finelines'] ?? null),
            glabellaWrinkle: self::mapValue($payload['glabella_wrinkle'] ?? null),
            nasolabialFold: self::mapValue($payload['nasolabial_fold'] ?? null),
            nasolabialFoldSeverity: self::mapValue($payload['nasolabial_fold_severity'] ?? null),
            skinType: self::mapValue($payload['skin_type'] ?? null),
            details: self::mapValue($payload['details'] ?? null),
            poresForehead: self::mapValue($payload['pores_forehead'] ?? null),
            poresLeftCheek: self::mapValue($payload['pores_left_cheek'] ?? null),
            poresRightCheek: self::mapValue($payload['pores_right_cheek'] ?? null),
            poresJaw: self::mapValue($payload['pores_jaw'] ?? null),
            blackhead: self::mapValue($payload['blackhead'] ?? null),
            acne: self::mapValue($payload['acne'] ?? null),
            rectangle: self::arrayValue($payload['rectangle'] ?? null),
            mole: self::mapValue($payload['mole'] ?? null),
            closedComedones: self::mapValue($payload['closed_comedones'] ?? null),
            skinSpot: self::mapValue($payload['skin_spot'] ?? null),
            faceMaps: self::mapValue($payload['face_maps'] ?? null),
            redArea: self::stringValue($payload['red_area'] ?? null),
            sensitivity: self::mapValue($payload['sensitivity'] ?? null),
            sensitivityArea: self::floatValue($payload['sensitivity_area'] ?? null),
            sensitivityIntensity: self::floatValue($payload['sensitivity_intensity'] ?? null),
        );
    }
}
