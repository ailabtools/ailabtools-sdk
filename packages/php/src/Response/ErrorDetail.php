<?php

declare(strict_types=1);

namespace AILabTools\Response;

final class ErrorDetail
{
    public function __construct(
        public readonly ?int $statusCode = null,
        public readonly ?string $code = null,
        public readonly ?string $codeMessage = null,
        public readonly ?string $message = null,
    ) {
    }

    /** @param array<string, mixed> $payload */
    public static function fromArray(array $payload): self
    {
        return new self(
            statusCode: isset($payload['status_code']) ? (int) $payload['status_code'] : null,
            code: isset($payload['code']) ? (string) $payload['code'] : null,
            codeMessage: isset($payload['code_message']) ? (string) $payload['code_message'] : null,
            message: isset($payload['message']) ? (string) $payload['message'] : null,
        );
    }
}
