<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitFacialLandmarksResponseData
{
    use ResponseValue;

    public function __construct(
        /** The content of the result data returned. */
        /** @var array<string, mixed>|null */
        public readonly ?array $result = null,
        /** The number of faces in the picture. */
        public readonly ?int $faceNum = null,
        /** List of face information. */
        /** @var array<mixed>|null */
        public readonly ?array $faceList = null,
        /** Face Token. */
        public readonly ?string $faceToken = null,
        /** The position of the face in the picture. */
        /** @var array<string, mixed>|null */
        public readonly ?array $location = null,
        /** The distance of the face area from the left border. */
        public readonly ?float $left = null,
        /** The distance of the face area from the upper boundary. */
        public readonly ?float $top = null,
        /** The width of the face area. */
        public readonly ?float $width = null,
        /** The height of the face area. */
        public readonly ?float $height = null,
        /** The clockwise rotation angle of the face frame with respect to the vertical direction. */
        public readonly ?int $rotation = null,
        /** Face confidence. */
        public readonly ?float $faceProbability = null,
        /** Face rotation parameters, refer to Face Spatial Pose Angle Reference for detailed description. */
        /** @var array<string, mixed>|null */
        public readonly ?array $angle = null,
        /** The left and right rotation angle of 3D rotation. */
        public readonly ?float $yaw = null,
        /** Three-dimensional rotation of the pitch angle. */
        public readonly ?float $pitch = null,
        /** In-plane rotation angle. */
        public readonly ?float $roll = null,
        /** Age. */
        public readonly ?float $age = null,
        /** Gender information. */
        /** @var array<string, mixed>|null */
        public readonly ?array $gender = null,
        public readonly ?string $type = null,
        /** Gender confidence. */
        public readonly ?float $probability = null,
        /** 4 feature points. */
        /** @var array<mixed>|null */
        public readonly ?array $landmark4 = null,
        /** 72 feature points. Refer to 72 feature points for details. */
        /** @var array<mixed>|null */
        public readonly ?array $landmark72 = null,
        /** 150 feature points. Refer to 150 feature points for details. */
        /** @var array<string, mixed>|null */
        public readonly ?array $landmark150 = null,
        /** 201 feature points. Refer to 201 feature points for details. */
        /** @var array<string, mixed>|null */
        public readonly ?array $landmark201 = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            result: self::mapValue($payload['result'] ?? null),
            faceNum: self::intValue($payload['face_num'] ?? null),
            faceList: self::arrayValue($payload['face_list'] ?? null),
            faceToken: self::stringValue($payload['face_token'] ?? null),
            location: self::mapValue($payload['location'] ?? null),
            left: self::floatValue($payload['left'] ?? null),
            top: self::floatValue($payload['top'] ?? null),
            width: self::floatValue($payload['width'] ?? null),
            height: self::floatValue($payload['height'] ?? null),
            rotation: self::intValue($payload['rotation'] ?? null),
            faceProbability: self::floatValue($payload['face_probability'] ?? null),
            angle: self::mapValue($payload['angle'] ?? null),
            yaw: self::floatValue($payload['yaw'] ?? null),
            pitch: self::floatValue($payload['pitch'] ?? null),
            roll: self::floatValue($payload['roll'] ?? null),
            age: self::floatValue($payload['age'] ?? null),
            gender: self::mapValue($payload['gender'] ?? null),
            type: self::stringValue($payload['type'] ?? null),
            probability: self::floatValue($payload['probability'] ?? null),
            landmark4: self::arrayValue($payload['landmark4'] ?? null),
            landmark72: self::arrayValue($payload['landmark72'] ?? null),
            landmark150: self::mapValue($payload['landmark150'] ?? null),
            landmark201: self::mapValue($payload['landmark201'] ?? null),
        );
    }
}
