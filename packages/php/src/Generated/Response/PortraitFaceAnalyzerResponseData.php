<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitFaceAnalyzerResponseData
{
    use ResponseValue;

    public function __construct(
        /** Image width. */
        public readonly ?int $imageWidth = null,
        /** Image height. */
        public readonly ?int $imageHeight = null,
        /** List of face information. */
        /** @var array<mixed>|null */
        public readonly ?array $faceDetailInfos = null,
        /** Face frame position. */
        /** @var array<string, mixed>|null */
        public readonly ?array $faceRect = null,
        /** The horizontal coordinate of the upper left corner of the face frame.The face frame contains the positions of the five senses of the face and expands on them, if the face frame is out of the range of the picture, it will lead to negative coordinates.If you need to intercept the complete face, you can take the negative coordinate to 0 if the complete subcompletess meets the demand. */
        public readonly ?int $x = null,
        /** The vertical coordinate of the upper left corner of the face frame. The face frame contains the positions of the five senses of the face and expands them to a certain extent. If the face frame exceeds the range of the picture, it will lead to negative coordinates. If you need to intercept the complete face, you can take the negative coordinate to 0 if the complete subcompletess meets the demand. */
        public readonly ?int $y = null,
        /** Face width. */
        public readonly ?int $width = null,
        /** Face height. */
        public readonly ?int $height = null,
        /** Face attribute information. */
        /** @var array<string, mixed>|null */
        public readonly ?array $faceDetailAttributesInfo = null,
        /** Age. 65: 65 years old and above. When face_attributes_type does not contain Age or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        public readonly ?int $age = null,
        /** Beauty Score. When face_attributes_type does not contain Beauty or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        public readonly ?int $beauty = null,
        /** Emotional information. When face_attributes_type does not contain Emotion or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $emotion = null,
        /** 0: Neutral. 1: Happy. 2: Surprised. 3: Angry. 4: Sad. 5: Disgusted. 6: Fearful. */
        public readonly ?int $type = null,
        /** Probability of being correct. */
        public readonly ?float $probability = null,
        /** Eye-related information. face_attributes_type does not contain Eye or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $eye = null,
        /** Wearing glasses. */
        /** @var array<string, mixed>|null */
        public readonly ?array $glass = null,
        /** Closed eyes. */
        /** @var array<string, mixed>|null */
        public readonly ?array $eyeOpen = null,
        /** Double eyelids. */
        /** @var array<string, mixed>|null */
        public readonly ?array $eyelidType = null,
        /** Eye size. */
        /** @var array<string, mixed>|null */
        public readonly ?array $eyeSize = null,
        /** Eyebrow information. face_attributes_type does not contain Eyebrow or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $eyebrow = null,
        /** Thick eyebrows. */
        /** @var array<string, mixed>|null */
        public readonly ?array $eyebrowDensity = null,
        /** Curved eyebrows. */
        /** @var array<string, mixed>|null */
        public readonly ?array $eyebrowCurve = null,
        /** Eyebrow length. */
        /** @var array<string, mixed>|null */
        public readonly ?array $eyebrowLength = null,
        /** Gender information. face_attributes_type does not contain Gender or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $gender = null,
        /** Hair information. face_attributes_type does not contain Hair or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $hair = null,
        /** Hair length information. */
        /** @var array<string, mixed>|null */
        public readonly ?array $length = null,
        /** Fringe (bangs) information. */
        /** @var array<string, mixed>|null */
        public readonly ?array $bang = null,
        /** Hair color information. */
        /** @var array<string, mixed>|null */
        public readonly ?array $color = null,
        /** Hat information. face_attributes_type does not contain Hat or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $hat = null,
        /** Hat wearing status information. */
        /** @var array<string, mixed>|null */
        public readonly ?array $style = null,
        /** Face offset information. face_attributes_type does not contain HeadPose or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $headPose = null,
        /** Vertical Offset. */
        public readonly ?int $pitch = null,
        /** Horizontal Offset. */
        public readonly ?int $yaw = null,
        /** Mask wearing information. face_attributes_type does not contain Mask or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $mask = null,
        /** Mouth information. face_attributes_type does not contain Mouth or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $mouth = null,
        /** Mouth open. */
        /** @var array<string, mixed>|null */
        public readonly ?array $mouthOpen = null,
        /** Facial hair information. face_attributes_type does not contain Moustache or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $moustache = null,
        /** Nose information. face_attributes_type does not contain Nose or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $nose = null,
        /** Face shape information. face_attributes_type does not contain Shape or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $shape = null,
        /** Skin color information. face_attributes_type does not contain Skin or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        /** @var array<string, mixed>|null */
        public readonly ?array $skin = null,
        /** Smile Rating. face_attributes_type does not contain Smile or when more than 5 faces are detected, this parameter is still returned but is not informative. */
        public readonly ?int $smile = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            imageWidth: self::intValue($payload['image_width'] ?? null),
            imageHeight: self::intValue($payload['image_height'] ?? null),
            faceDetailInfos: self::arrayValue($payload['face_detail_infos'] ?? null),
            faceRect: self::mapValue($payload['face_rect'] ?? null),
            x: self::intValue($payload['x'] ?? null),
            y: self::intValue($payload['y'] ?? null),
            width: self::intValue($payload['width'] ?? null),
            height: self::intValue($payload['height'] ?? null),
            faceDetailAttributesInfo: self::mapValue($payload['face_detail_attributes_info'] ?? null),
            age: self::intValue($payload['age'] ?? null),
            beauty: self::intValue($payload['beauty'] ?? null),
            emotion: self::mapValue($payload['emotion'] ?? null),
            type: self::intValue($payload['type'] ?? null),
            probability: self::floatValue($payload['probability'] ?? null),
            eye: self::mapValue($payload['eye'] ?? null),
            glass: self::mapValue($payload['glass'] ?? null),
            eyeOpen: self::mapValue($payload['eye_open'] ?? null),
            eyelidType: self::mapValue($payload['eyelid_type'] ?? null),
            eyeSize: self::mapValue($payload['eye_size'] ?? null),
            eyebrow: self::mapValue($payload['eyebrow'] ?? null),
            eyebrowDensity: self::mapValue($payload['eyebrow_density'] ?? null),
            eyebrowCurve: self::mapValue($payload['eyebrow_curve'] ?? null),
            eyebrowLength: self::mapValue($payload['eyebrow_length'] ?? null),
            gender: self::mapValue($payload['gender'] ?? null),
            hair: self::mapValue($payload['hair'] ?? null),
            length: self::mapValue($payload['length'] ?? null),
            bang: self::mapValue($payload['bang'] ?? null),
            color: self::mapValue($payload['color'] ?? null),
            hat: self::mapValue($payload['hat'] ?? null),
            style: self::mapValue($payload['style'] ?? null),
            headPose: self::mapValue($payload['head_pose'] ?? null),
            pitch: self::intValue($payload['pitch'] ?? null),
            yaw: self::intValue($payload['yaw'] ?? null),
            mask: self::mapValue($payload['mask'] ?? null),
            mouth: self::mapValue($payload['mouth'] ?? null),
            mouthOpen: self::mapValue($payload['mouth_open'] ?? null),
            moustache: self::mapValue($payload['moustache'] ?? null),
            nose: self::mapValue($payload['nose'] ?? null),
            shape: self::mapValue($payload['shape'] ?? null),
            skin: self::mapValue($payload['skin'] ?? null),
            smile: self::intValue($payload['smile'] ?? null),
        );
    }
}
