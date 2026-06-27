<?php

declare(strict_types=1);

namespace AILabTools\Http;

use AILabTools\Exception\ApiException;
use AILabTools\Response\BaseResponse;
use AILabTools\Response\ErrorDetail;
use GuzzleHttp\ClientInterface;
use JsonException;

final class Requester
{
    public function __construct(
        private readonly ClientInterface $client,
        private readonly string $apiKey,
        private readonly string $baseUrl,
        private readonly float $timeout,
    ) {
    }

    /**
     * @template T of BaseResponse
     * @param array<string, mixed> $params
     * @param callable(array<string, mixed>): T $responseFactory
     * @return T
     */
    public function request(
        string $method,
        string $path,
        array $params,
        bool $multipart,
        callable $responseFactory,
    ): BaseResponse {
        $url = rtrim($this->baseUrl, '/') . '/' . ltrim($path, '/');
        $options = [
            'headers' => ['ailabapi-api-key' => $this->apiKey],
            'http_errors' => false,
            'timeout' => $this->timeout,
        ];
        $resources = [];

        if (strtoupper($method) === 'GET') {
            $options['query'] = self::withoutNulls($params);
        } elseif ($multipart) {
            $parts = [];
            foreach (self::withoutNulls($params) as $name => $value) {
                if ($value instanceof FileInput) {
                    $upload = $value->toMultipartPart($name);
                    $parts[] = $upload['part'];
                    if (is_resource($upload['close'])) {
                        $resources[] = $upload['close'];
                    }
                } else {
                    $parts[] = ['name' => $name, 'contents' => self::stringify($value)];
                }
            }
            $options['multipart'] = $parts;
        } else {
            $options['json'] = self::withoutNulls($params);
        }

        try {
            $response = $this->client->request($method, $url, $options);
            $statusCode = $response->getStatusCode();
            $raw = (string) $response->getBody();
        } finally {
            foreach ($resources as $resource) {
                if (is_resource($resource)) {
                    fclose($resource);
                }
            }
        }

        try {
            $payload = json_decode($raw, true, 512, JSON_THROW_ON_ERROR);
        } catch (JsonException) {
            throw new ApiException(
                $raw === '' ? 'Empty response' : 'Invalid JSON response',
                statusCode: $statusCode,
                raw: $raw,
            );
        }
        if (!is_array($payload)) {
            throw new ApiException('Invalid JSON response', statusCode: $statusCode, raw: $raw);
        }

        $errorCode = isset($payload['error_code']) ? (int) $payload['error_code'] : 0;
        if ($statusCode !== 200 || $errorCode !== 0) {
            $detail = isset($payload['error_detail']) && is_array($payload['error_detail'])
                ? ErrorDetail::fromArray($payload['error_detail'])
                : null;
            throw new ApiException(
                $detail->message ?? (isset($payload['error_msg']) ? (string) $payload['error_msg'] : 'AILabTools API Error'),
                statusCode: $statusCode,
                requestId: isset($payload['request_id']) ? (string) $payload['request_id'] : null,
                logId: isset($payload['log_id']) ? (string) $payload['log_id'] : null,
                detail: $detail,
                raw: $payload,
            );
        }

        return $responseFactory($payload);
    }

    /** @param array<string, mixed> $values
     *  @return array<string, mixed>
     */
    private static function withoutNulls(array $values): array
    {
        return array_filter($values, static fn (mixed $value): bool => $value !== null);
    }

    private static function stringify(mixed $value): string
    {
        if (is_bool($value)) {
            return $value ? 'true' : 'false';
        }
        if (is_array($value)) {
            return implode(',', array_map('strval', $value));
        }

        return (string) $value;
    }
}
