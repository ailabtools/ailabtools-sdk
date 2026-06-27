<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\ResponseValue;

final class PortraitLivePhotosResponseData
{
    use ResponseValue;

    public function __construct(
        /** Returns the base64 encoded string of the generated video. */
        public readonly ?string $video = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            video: self::stringValue($payload['video'] ?? null),
        );
    }
}
