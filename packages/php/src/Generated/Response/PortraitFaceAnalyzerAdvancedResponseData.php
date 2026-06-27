<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitFaceAnalyzerAdvancedResponseData
{
    use ResponseValue;

    public function __construct(
        /** The center point coordinates and radius of the left and right pupils, with 6 floating-point values per face, in the order of [left_iris_cenpt.x, left_iris_cenpt.y, left_iris_radius, right_iris_cenpt.x, right_iris_cenpt.y, right_iris_radius]. If multiple faces are detected, results are returned in order. */
        /** @var list<float>|null */
        public readonly ?array $pupils = null,
        /** Gender. If multiple faces are detected, results are returned in order. 0: Female. 1: Male. */
        /** @var list<int>|null */
        public readonly ?array $genderList = null,
        /** Expression. If multiple faces are detected, results are returned in order. 0: Neutral. 1: Smile. */
        /** @var list<int>|null */
        public readonly ?array $expressions = null,
        /** Number of faces. */
        public readonly ?int $faceCount = null,
        /** Facial landmark detection results. A set of landmark coordinates is returned for each face, represented as (x0, y0, x1, y1, ...). If multiple faces are detected, results are returned in order. */
        /** @var list<float>|null */
        public readonly ?array $landmarks = null,
        /** Number of facial landmarks. distributed as follows: Eyebrows: 24 points Eyes: 32 points Nose: 6 points Mouth: 34 points Outer contour: 9 points */
        public readonly ?int $landmarkCount = null,
        /** Attractiveness score. A higher score indicates a higher level of attractiveness. If multiple faces are detected, results are returned in order. */
        /** @var list<float>|null */
        public readonly ?array $beautyList = null,
        /** Whether wearing a hat. If multiple faces are detected, results are returned in order. 0: No. 1: Yes. */
        /** @var list<int>|null */
        public readonly ?array $hatList = null,
        /** Probability of a face. If multiple faces are detected, results are returned in order. */
        /** @var list<float>|null */
        public readonly ?array $faceProbabilityList = null,
        /** Whether wearing glasses. If multiple faces are detected, results are returned in order. 0: No glasses. 1: Wearing regular glasses. 2: Wearing sunglasses. */
        /** @var list<int>|null */
        public readonly ?array $glasses = null,
        /** Face bounding box, represented as [left, top, width, height]. If multiple faces are detected, results are returned in order. */
        /** @var list<int>|null */
        public readonly ?array $faceRectangles = null,
        /** Face pose, in the format [yaw, pitch, roll]. If multiple faces are detected, results are returned in order. yaw: left-right angle. Range: [-90, 90]. pitch: up-down angle. Range: [-90, 90]. roll: in-plane rotation angle. Range: [-180, 180]. */
        /** @var list<float>|null */
        public readonly ?array $poseList = null,
        /** Age. If multiple faces are detected, results are returned in order. */
        /** @var list<int>|null */
        public readonly ?array $ageList = null,
        /** The feature dimension returned by face recognition. */
        public readonly ?int $denseFeatureLength = null,
        /** Whether wearing a mask. If multiple faces are detected, results are returned in order. 0: No. 1: Yes. 2: Mask worn incorrectly. */
        /** @var list<int>|null */
        public readonly ?array $masks = null,
        /** Face quality score, where a higher score indicates better suitability for recognition. */
        /** @var array<string, mixed>|null */
        public readonly ?array $qualities = null,
        /** Overall quality score, where a higher score indicates better suitability for recognition. It is recommended to set a threshold of >=85 during recognition: a score above 85 indicates high overall image quality, while a score below 85 indicates lower overall image quality. If multiple faces are detected, results are returned in order. */
        /** @var list<float>|null */
        public readonly ?array $scoreList = null,
        /** Face blur score indicating the impact of blurriness on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of >=85 during recognition: a score above 85 indicates a lower likelihood of the image being blurry, while a score below 85 indicates a higher likelihood of blurriness. If multiple faces are detected, results are returned in order. */
        /** @var list<float>|null */
        public readonly ?array $blurList = null,
        /** Score indicating whether the target is a face and its impact on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of >=85 during recognition: a score above 85 indicates a higher probability that the image is a face, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order. */
        /** @var list<float>|null */
        public readonly ?array $fnfList = null,
        /** Score indicating the impact of upper-face occlusion (e.g., glasses) on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of >=85 during recognition: a score above 85 indicates a lower probability of wearing glasses, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order. */
        /** @var list<float>|null */
        public readonly ?array $glassList = null,
        /** Score indicating the impact of lighting on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of >=85 during recognition: a score above 85 indicates a higher probability that the image has good lighting, while a score below 85 indicates a lower probability. If multiple faces are detected, results are returned in order. */
        /** @var list<float>|null */
        public readonly ?array $illuList = null,
        /** Score indicating the impact of lower-face occlusion (e.g., mask) on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of >=85 during recognition: a score above 85 indicates a lower probability of wearing a mask, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order. */
        /** @var list<float>|null */
        public readonly ?array $maskList = null,
        /** Score indicating the impact of image noise on recognition, where a higher score is more favorable for recognition. It is recommended to set a threshold of >=85 during recognition: a score above 85 indicates a lower probability of image noise, while a score below 85 indicates a higher probability. If multiple faces are detected, results are returned in order. */
        /** @var list<float>|null */
        public readonly ?array $noiseList = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            pupils: self::floatList($payload['pupils'] ?? null),
            genderList: self::intList($payload['gender_list'] ?? null),
            expressions: self::intList($payload['expressions'] ?? null),
            faceCount: self::intValue($payload['face_count'] ?? null),
            landmarks: self::floatList($payload['landmarks'] ?? null),
            landmarkCount: self::intValue($payload['landmark_count'] ?? null),
            beautyList: self::floatList($payload['beauty_list'] ?? null),
            hatList: self::intList($payload['hat_list'] ?? null),
            faceProbabilityList: self::floatList($payload['face_probability_list'] ?? null),
            glasses: self::intList($payload['glasses'] ?? null),
            faceRectangles: self::intList($payload['face_rectangles'] ?? null),
            poseList: self::floatList($payload['pose_list'] ?? null),
            ageList: self::intList($payload['age_list'] ?? null),
            denseFeatureLength: self::intValue($payload['dense_feature_length'] ?? null),
            masks: self::intList($payload['masks'] ?? null),
            qualities: self::mapValue($payload['qualities'] ?? null),
            scoreList: self::floatList($payload['score_list'] ?? null),
            blurList: self::floatList($payload['blur_list'] ?? null),
            fnfList: self::floatList($payload['fnf_list'] ?? null),
            glassList: self::floatList($payload['glass_list'] ?? null),
            illuList: self::floatList($payload['illu_list'] ?? null),
            maskList: self::floatList($payload['mask_list'] ?? null),
            noiseList: self::floatList($payload['noise_list'] ?? null),
        );
    }
}
