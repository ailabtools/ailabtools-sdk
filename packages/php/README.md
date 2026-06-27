# AILabTools SDK for PHP

Official PHP SDK for the [AILabTools AI image APIs](https://www.ailabtools.com/docs). Add background removal, image upscaling, object removal, portrait retouching, hairstyle changes, virtual try-on, and other AI photo features to PHP applications.

Install the [AILabTools PHP SDK from Packagist](https://packagist.org/packages/ailabtools/ailabtools).

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

- Strongly typed parameter and response classes for 87 current APIs plus 6 legacy-compatible endpoints
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

## Popular Use Cases

| Popular API | Typical use case | SDK method | Try online |
| --- | --- | --- | --- |
| [Cartoon Yourself API](https://www.ailabtools.com/docs/ai-portrait/effects/portrait-animation/api) | Create cartoon portraits and avatars from photos. | `$client->portrait->portraitCartoonYourself()` | [Try Cartoon Yourself online](https://www.ailabtools.com/face-anime-converter) |
| [Change Facial Expressions API](https://www.ailabtools.com/docs/ai-portrait/effects/emotion-editor/api) | Edit smiles, grins, sadness, and other facial expressions. | `$client->portrait->portraitExpressionEditing()` | [Try Change Facial Expressions online](https://www.ailabtools.com/change-facial-expressions) |
| [Hairstyle Changer Premium API](https://www.ailabtools.com/docs/ai-portrait/effects/hairstyle-editor-premium/api) | Preview preset hairstyles or transfer a hairstyle from a reference image. | `$client->portrait->portraitHairstyleEditingPremium()` | [Try Hairstyle Changer online](https://www.ailabtools.com/hairstyle-changer) |
| [Try on Clothes Premium API](https://www.ailabtools.com/docs/ai-portrait/editing/try-on-clothes-premium/api) | Generate high-quality virtual clothing try-on results. | `$client->portrait->portraitTryOnClothesPremium()` | [Try Virtual Clothes Try-On online](https://www.ailabtools.com/virtual-try-on-clothes) |
| [Skin Analyze Pro API](https://www.ailabtools.com/docs/ai-portrait/analysis/skin-analysis-pro/api) | Analyze skin condition, texture, tone, acne, pores, and wrinkles. | `$client->portrait->portraitSkinAnalysisProfessional()` | [Try AI Skin Analyzer online](https://www.ailabtools.com/ai-skin-analyze) |
| [Face Beauty Pro API](https://www.ailabtools.com/docs/ai-portrait/effects/face-beauty-pro/api) | Apply advanced portrait beautification and face shaping. | `$client->portrait->portraitFacialBeautificationPro()` | [Try Retouch Portraits online](https://www.ailabtools.com/retouch-portraits) |
| [AI Face Swap API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-face-swap/api) | Swap a face into a target portrait while preserving the scene. | `$client->portrait->portraitAIFaceSwap()` | [Try AI Face Swap online](https://www.ailabtools.com/face-swap) |
| [AI Breast Expansion API](https://www.ailabtools.com/docs/ai-portrait/editing/ai-breast-expansion/api) | Apply a controlled bust-area adjustment to a portrait. | `$client->portrait->portraitAIBreastExpansion()` | [Try AI Breast Expansion online](https://www.ailabtools.com/ai-breast-expansion) |

Browse more demos in [AILabTools AI Portrait Tools](https://www.ailabtools.com/ai-portrait-tools) and [AILabTools AI Image Tools](https://www.ailabtools.com/ai-image-tools).

[View the complete AILabTools SDK API index](https://github.com/ailabtools/ailabtools-sdk/blob/main/docs/README.md#api-index).

## Common Developer-Friendly Aliases

| Use case | PHP alias |
| --- | --- |
| Remove image background | `$client->background->remove()` |
| Upscale an image | `$client->image->upscale()` |
| Remove objects | `$client->image->removeObjects()` |
| Change a hairstyle | `$client->portrait->changeHairstyle()` |
| Retouch a portrait | `$client->portrait->retouch()` |

The SDK exposes camelCase PHP properties and maps them to API request names. For example, `upscaleFactor` maps to `upscale_factor`, while `returnForm` maps to `return_form`.

[View the complete method and alias reference](https://github.com/ailabtools/ailabtools-sdk/blob/main/docs/method-aliases.md).

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
- [AILabTools PHP SDK on Packagist](https://packagist.org/packages/ailabtools/ailabtools)
- [AILabTools PHP SDK source code](https://github.com/ailabtools/ailabtools-php)
- [Report a PHP SDK issue](https://github.com/ailabtools/ailabtools-php/issues)

## License

[MIT](LICENSE)
