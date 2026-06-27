<?php

declare(strict_types=1);

require dirname(__DIR__) . '/vendor/autoload.php';

use AILabTools\AILabClient;
use AILabTools\Generated\Params\CutoutUniversalBackgroundRemovalParams;
use AILabTools\Http\FileInput;

$apiKey = getenv('AILAB_API_KEY');
if ($apiKey === false || $apiKey === '') {
    throw new RuntimeException('Set AILAB_API_KEY before running this example.');
}

$client = new AILabClient(apiKey: $apiKey);
$result = $client->background->remove(
    new CutoutUniversalBackgroundRemovalParams(
        image: FileInput::fromPath(dirname(__DIR__, 3) . '/image.jpg'),
    ),
);

echo $result->data?->imageUrl . PHP_EOL;
