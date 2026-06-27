# AILabTools SDK for PHP

Official PHP SDK for the [AILabTools AI image APIs](https://www.ailabtools.com/docs). Add background removal, image upscaling, object removal, portrait retouching, hairstyle changes, virtual try-on, and other AI photo features to PHP applications.

## Requirements

- PHP 8.1 or later
- Composer

## Installation

```bash
composer require ailabtools/ailabtools
```

## Quick Start

Create or copy an API key from the [AILabTools Developer Console](https://www.ailabtools.com/developer).

```php
<?php

require __DIR__ . '/vendor/autoload.php';

use AILabTools\AILabClient;
use AILabTools\Generated\Params\CutoutUniversalBackgroundRemovalParams;
use AILabTools\Http\FileInput;

$client = new AILabClient(apiKey: getenv('AILAB_API_KEY'));

$result = $client->background->remove(
    new CutoutUniversalBackgroundRemovalParams(
        image: FileInput::fromPath(__DIR__ . '/photo.jpg'),
        returnForm: 'whiteBK',
    ),
);

echo $result->data?->imageUrl;
```

## Features

- Strongly typed parameter and response classes for all 60 active APIs
- PSR-4 autoloading and named-argument-friendly DTOs
- Guzzle 7 with injectable `ClientInterface`
- Path, byte-string, and resource file uploads
- Structured API exceptions with request and log IDs
- Async task polling for long-running APIs

## File Uploads

```php
use AILabTools\Http\FileInput;

$fromPath = FileInput::fromPath('/path/to/photo.jpg');
$fromBytes = FileInput::fromBytes($bytes, 'photo.jpg', 'image/jpeg');
$fromResource = FileInput::fromResource($stream, 'photo.jpg');
```

## Popular APIs

| Use case | PHP method |
| --- | --- |
| Remove image background | `$client->background->remove()` |
| Upscale an image | `$client->image->upscale()` |
| Remove objects | `$client->image->removeObjects()` |
| Change a hairstyle | `$client->portrait->changeHairstyle()` |
| Retouch a portrait | `$client->portrait->retouch()` |
| Query account credits | `$client->common->commonQueryCredits()` |

The SDK exposes camelCase PHP properties and maps them to API request names. For example, `upscaleFactor` maps to `upscale_factor`, while `returnForm` maps to `return_form`.

## Async Tasks

```php
$task = $client->portrait->changeHairstyle($params);
$taskId = $task->taskId ?? $task->data?->taskId;

$result = $client->waitForTask(
    taskId: $taskId,
    intervalSeconds: 5,
    timeoutSeconds: 300,
);
```

## Error Handling

```php
use AILabTools\Exception\ApiException;

try {
    $result = $client->background->remove($params);
} catch (ApiException $error) {
    echo $error->getMessage();
    echo $error->requestId;
    echo $error->logId;
}
```

## Custom HTTP Client

```php
use GuzzleHttp\Client;

$client = new AILabClient(
    apiKey: getenv('AILAB_API_KEY'),
    timeout: 60,
    httpClient: new Client(),
);
```

## Links

- [Get an AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API documentation](https://www.ailabtools.com/docs)
- [AILabTools PHP SDK source code](https://github.com/ailabtools/ailabtools-php)
- [Report a PHP SDK issue](https://github.com/ailabtools/ailabtools-php/issues)

## License

[MIT](LICENSE)
