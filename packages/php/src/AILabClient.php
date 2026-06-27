<?php

declare(strict_types=1);

namespace AILabTools;

use AILabTools\Api\BackgroundApi;
use AILabTools\Api\CommonApi;
use AILabTools\Api\CutoutApi;
use AILabTools\Api\ImageApi;
use AILabTools\Api\PortraitApi;
use AILabTools\Generated\Params\CommonQueryAsyncTaskResultParams;
use AILabTools\Generated\Response\CommonQueryAsyncTaskResultResponse;
use AILabTools\Http\Requester;
use GuzzleHttp\Client;
use GuzzleHttp\ClientInterface;
use RuntimeException;

final class AILabClient
{
    public readonly CommonApi $common;
    public readonly CutoutApi $cutout;
    public readonly ImageApi $image;
    public readonly PortraitApi $portrait;
    public readonly BackgroundApi $background;

    public function __construct(
        string $apiKey,
        string $baseUrl = 'https://www.ailabapi.com',
        float $timeout = 30.0,
        ?ClientInterface $httpClient = null,
    ) {
        if ($apiKey === '') {
            throw new RuntimeException('AILabTools API key must not be empty.');
        }

        $requester = new Requester(
            $httpClient ?? new Client(),
            $apiKey,
            $baseUrl,
            $timeout,
        );
        $this->common = new CommonApi($requester);
        $this->cutout = new CutoutApi($requester);
        $this->image = new ImageApi($requester);
        $this->portrait = new PortraitApi($requester);
        $this->background = new BackgroundApi($this->cutout);
    }

    public function waitForTask(
        string $taskId,
        float $intervalSeconds = 5.0,
        float $timeoutSeconds = 300.0,
        bool $throwOnFailed = true,
    ): CommonQueryAsyncTaskResultResponse {
        $startedAt = microtime(true);

        while ((microtime(true) - $startedAt) <= $timeoutSeconds) {
            $result = $this->common->commonQueryAsyncTaskResult(
                new CommonQueryAsyncTaskResultParams(taskId: $taskId),
            );
            $status = $result->data->taskStatus ?? $result->taskStatus;
            if ($status === 2) {
                return $result;
            }
            if ($status === 3) {
                if ($throwOnFailed) {
                    throw new RuntimeException("AILabTools task failed: {$taskId}");
                }

                return $result;
            }
            if ($intervalSeconds > 0) {
                usleep((int) ($intervalSeconds * 1_000_000));
            }
        }

        throw new RuntimeException("AILabTools task timed out: {$taskId}");
    }
}
