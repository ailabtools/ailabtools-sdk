<?php

declare(strict_types=1);

namespace AILabTools\Response;

abstract class BaseResponse
{
    /** @param array<string, mixed> $raw */
    protected function __construct(
        public readonly array $raw,
        public readonly ?string $requestId = null,
        public readonly ?string $logId = null,
        public readonly ?int $errorCode = null,
        public readonly ?string $errorCodeString = null,
        public readonly ?string $errorMessage = null,
        public readonly ?ErrorDetail $errorDetail = null,
        public readonly ?string $image = null,
        public readonly mixed $ratio = null,
        public readonly ?string $taskType = null,
        public readonly ?string $taskId = null,
        public readonly ?int $taskStatus = null,
    ) {
    }

    /** @param array<string, mixed> $payload
     *  @return array<string, mixed>
     */
    protected static function metadata(array $payload): array
    {
        return [
            'raw' => $payload,
            'requestId' => isset($payload['request_id']) ? (string) $payload['request_id'] : null,
            'logId' => isset($payload['log_id']) ? (string) $payload['log_id'] : null,
            'errorCode' => isset($payload['error_code']) ? (int) $payload['error_code'] : null,
            'errorCodeString' => isset($payload['error_code_str']) ? (string) $payload['error_code_str'] : null,
            'errorMessage' => isset($payload['error_msg']) ? (string) $payload['error_msg'] : null,
            'errorDetail' => isset($payload['error_detail']) && is_array($payload['error_detail'])
                ? ErrorDetail::fromArray($payload['error_detail'])
                : null,
            'image' => isset($payload['image']) ? (string) $payload['image'] : null,
            'ratio' => $payload['ratio'] ?? null,
            'taskType' => isset($payload['task_type']) ? (string) $payload['task_type'] : null,
            'taskId' => isset($payload['task_id']) ? (string) $payload['task_id'] : null,
            'taskStatus' => isset($payload['task_status']) ? (int) $payload['task_status'] : null,
        ];
    }
}
