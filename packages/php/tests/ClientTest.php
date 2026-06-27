<?php

declare(strict_types=1);

namespace AILabTools\Tests;

use AILabTools\AILabClient;
use AILabTools\Exception\ApiException;
use AILabTools\Generated\Params\CommonQueryCreditsParams;
use AILabTools\Generated\Params\CutoutUniversalBackgroundRemovalParams;
use AILabTools\Generated\Params\ImageLosslessEnlargementParams;
use AILabTools\Generated\Params\PortraitHairstyleEditingPremiumParams;
use AILabTools\Generated\Response\ImageRemoveObjectsAdvancedResponse;
use AILabTools\Generated\Response\CutoutHdHumanBodyBackgroundRemovalResponse;
use AILabTools\Generated\Response\PortraitFaceAnalyzerAdvancedResponse;
use AILabTools\Generated\Response\PortraitAIBreastExpansionResponse;
use AILabTools\Http\FileInput;
use GuzzleHttp\Client;
use GuzzleHttp\Handler\MockHandler;
use GuzzleHttp\HandlerStack;
use GuzzleHttp\Middleware;
use GuzzleHttp\Psr7\Response;
use PHPUnit\Framework\TestCase;

final class ClientTest extends TestCase
{
    public function testPremiumHairstyleRequiresStyleOrTemplate(): void
    {
        $this->expectException(\InvalidArgumentException::class);
        $this->expectExceptionMessage('At least one of hairStyle, imageTemplate is required');

        new PortraitHairstyleEditingPremiumParams(
            image: FileInput::fromBytes('image', 'photo.jpg'),
        );
    }

    public function testBackgroundAliasUploadsFileAndMapsResponse(): void
    {
        $history = [];
        $client = $this->clientWithResponses([
            new Response(200, [], json_encode([
                'error_code' => 0,
                'request_id' => 'request-1',
                'data' => ['image_url' => 'https://example.com/result.png'],
            ], JSON_THROW_ON_ERROR)),
        ], $history);

        $result = $client->background->remove(
            new CutoutUniversalBackgroundRemovalParams(
                image: FileInput::fromBytes('image-bytes', 'photo.jpg', 'image/jpeg'),
                returnForm: 'whiteBK',
            ),
        );

        self::assertSame('request-1', $result->requestId);
        self::assertSame('https://example.com/result.png', $result->data?->imageUrl);
        self::assertCount(1, $history);
        $request = $history[0]['request'];
        self::assertSame('/api/cutout/general/universal-background-removal', $request->getUri()->getPath());
        self::assertSame('test-key', $request->getHeaderLine('ailabapi-api-key'));
        $body = (string) $request->getBody();
        self::assertStringContainsString('name="return_form"', $body);
        self::assertStringContainsString('whiteBK', $body);
        self::assertStringContainsString('filename="photo.jpg"', $body);
    }

    public function testPathUploadDoesNotDoubleCloseGuzzleStream(): void
    {
        $history = [];
        $client = $this->clientWithResponses([
            new Response(200, [], '{"error_code":0,"data":{"image_url":"ok"}}'),
        ], $history);
        $path = tempnam(sys_get_temp_dir(), 'ailabtools-');
        self::assertNotFalse($path);
        file_put_contents($path, 'image-bytes');

        try {
            $result = $client->background->remove(
                new CutoutUniversalBackgroundRemovalParams(
                    image: FileInput::fromPath($path, 'photo.jpg'),
                ),
            );
        } finally {
            unlink($path);
        }

        self::assertSame('ok', $result->data?->imageUrl);
    }

    public function testUpscaleMapsCamelCaseFields(): void
    {
        $history = [];
        $client = $this->clientWithResponses([
            new Response(200, [], '{"error_code":0,"data":{"url":"https://example.com/upscaled.jpg"}}'),
        ], $history);

        $result = $client->image->upscale(
            new ImageLosslessEnlargementParams(
                image: FileInput::fromBytes('image', 'photo.jpg'),
                upscaleFactor: 4,
                outputFormat: 'jpg',
                outputQuality: 80,
            ),
        );

        self::assertSame('https://example.com/upscaled.jpg', $result->data?->url);
        $body = (string) $history[0]['request']->getBody();
        self::assertStringContainsString('name="upscale_factor"', $body);
        self::assertStringContainsString('name="output_format"', $body);
        self::assertStringNotContainsString('name="upscaleFactor"', $body);
    }

    public function testApiErrorsExposeRequestAndLogIds(): void
    {
        $history = [];
        $client = $this->clientWithResponses([
            new Response(400, [], json_encode([
                'error_code' => 1001,
                'error_msg' => 'Invalid image',
                'request_id' => 'request-2',
                'log_id' => 'log-2',
                'error_detail' => ['message' => 'Unsupported image format'],
            ], JSON_THROW_ON_ERROR)),
        ], $history);

        try {
            $client->common->commonQueryCredits(new CommonQueryCreditsParams());
            self::fail('Expected ApiException.');
        } catch (ApiException $error) {
            self::assertSame(400, $error->statusCode);
            self::assertSame('request-2', $error->requestId);
            self::assertSame('log-2', $error->logId);
            self::assertSame('Unsupported image format', $error->getMessage());
        }
    }

    public function testTypedArrayResponses(): void
    {
        $analysis = PortraitFaceAnalyzerAdvancedResponse::fromArray([
            'error_code' => 0,
            'data' => [
                'pupils' => [1, 2.5],
                'gender_list' => [0, 1],
            ],
        ]);
        $removal = ImageRemoveObjectsAdvancedResponse::fromArray([
            'error_code' => 0,
            'data' => ['binary_data_base64' => ['first', 'second']],
        ]);

        self::assertNotNull($analysis->data);
        self::assertNotNull($removal->data);
        self::assertSame([1.0, 2.5], $analysis->data->pupils);
        self::assertSame([0, 1], $analysis->data->genderList);
        self::assertSame(['first', 'second'], $removal->data->binaryDataBase64);
    }

    public function testNewNestedResponses(): void
    {
        $cutout = CutoutHdHumanBodyBackgroundRemovalResponse::fromArray([
            'error_code' => 0,
            'data' => [
                'elements' => [
                    ['image_url' => 'https://example.com/cutout.png'],
                ],
            ],
        ]);
        $breast = PortraitAIBreastExpansionResponse::fromArray([
            'error_code' => 0,
            'data' => ['image' => 'https://example.com/result.png'],
        ]);

        self::assertSame('https://example.com/cutout.png', $cutout->data?->elements[0]->imageUrl);
        self::assertSame('https://example.com/result.png', $breast->data?->image);
    }

    public function testWaitForTaskPollsUntilSuccess(): void
    {
        $history = [];
        $client = $this->clientWithResponses([
            new Response(200, [], '{"error_code":0,"data":{"task_status":1}}'),
            new Response(200, [], '{"error_code":0,"data":{"task_status":2}}'),
        ], $history);

        $result = $client->waitForTask(
            taskId: 'task-1',
            intervalSeconds: 0,
            timeoutSeconds: 1,
        );

        self::assertSame(2, $result->data?->taskStatus);
        self::assertCount(2, $history);
        self::assertSame('task_id=task-1', $history[0]['request']->getUri()->getQuery());
    }

    /** @param list<Response> $responses
     *  @param array<int, array<string, mixed>> $history
     */
    private function clientWithResponses(array $responses, array &$history): AILabClient
    {
        $stack = HandlerStack::create(new MockHandler($responses));
        // Guzzle accepts an array here and mutates it through a broader by-reference type.
        /** @phpstan-ignore parameterByRef.type */
        $stack->push(Middleware::history($history));

        return new AILabClient(
            apiKey: 'test-key',
            baseUrl: 'https://example.com',
            httpClient: new Client(['handler' => $stack]),
        );
    }
}
