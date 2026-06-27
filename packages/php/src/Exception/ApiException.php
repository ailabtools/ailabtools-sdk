<?php

declare(strict_types=1);

namespace AILabTools\Exception;

use AILabTools\Response\ErrorDetail;
use RuntimeException;

final class ApiException extends RuntimeException
{
    /** @param array<string, mixed>|string|null $raw */
    public function __construct(
        string $message,
        public readonly ?int $statusCode = null,
        public readonly ?string $requestId = null,
        public readonly ?string $logId = null,
        public readonly ?ErrorDetail $detail = null,
        public readonly array|string|null $raw = null,
    ) {
        parent::__construct($message);
    }
}
