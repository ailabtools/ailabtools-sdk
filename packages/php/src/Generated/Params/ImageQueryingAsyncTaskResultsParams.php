<?php

declare(strict_types=1);

namespace AILabTools\Generated\Params;

final class ImageQueryingAsyncTaskResultsParams
{
    public function __construct(
        /** The request_id returned by the asynchronous API. */
        public readonly string $jobId,
        /** Asynchronous task type. HD_COLOUR_MIGRATION: HD Color Migration GENERATE_CARTOONIZED_IMAGE: AI Cartoon Generator */
        public readonly string $type,
    ) {
    }

    /** @return array<string, mixed> */
    public function toArray(): array
    {
        return [
            'job_id' => $this->jobId,
            'type' => $this->type,
        ];
    }
}
