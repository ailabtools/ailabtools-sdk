<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\BaseResponse;

final class PortraitIntelligentSkinRetouchingResponse extends BaseResponse
{
    /** @param array<string, mixed> $metadata */
    private function __construct(
        public readonly ?PortraitIntelligentSkinRetouchingResponseData $data,
        array $metadata,
    ) {
        parent::__construct(...$metadata);
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        $data = isset($payload['data']) && is_array($payload['data'])
            ? PortraitIntelligentSkinRetouchingResponseData::fromArray($payload['data'])
            : null;

        return new self($data, self::metadata($payload));
    }
}
