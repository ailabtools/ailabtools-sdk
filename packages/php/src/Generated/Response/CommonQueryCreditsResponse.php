<?php

declare(strict_types=1);

namespace AILabTools\Generated\Response;

use AILabTools\Response\BaseResponse;

final class CommonQueryCreditsResponse extends BaseResponse
{
    /** @param list<CommonQueryCreditsResponseData> $data
     *  @param array<string, mixed> $metadata
     */
    private function __construct(
        public readonly array $data,
        array $metadata,
    ) {
        parent::__construct(...$metadata);
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        $data = [];
        if (isset($payload['data']) && is_array($payload['data'])) {
            foreach ($payload['data'] as $item) {
                if (is_array($item)) {
                    $data[] = CommonQueryCreditsResponseData::fromArray($item);
                }
            }
        }

        return new self($data, self::metadata($payload));
    }
}
