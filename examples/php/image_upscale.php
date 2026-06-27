<?php

declare(strict_types=1);

require __DIR__ . '/../../packages/php/vendor/autoload.php';

use AILabTools\AILabClient;
use AILabTools\Generated\Params\ImageLosslessEnlargementParams;
use AILabTools\Http\FileInput;

$client = new AILabClient(apiKey: getenv('AILAB_API_KEY') ?: '');
$result = $client->image->upscale(
    new ImageLosslessEnlargementParams(
        image: FileInput::fromPath(__DIR__ . '/../../image.jpg'),
        upscaleFactor: 2,
    ),
);

echo $result->data?->url . PHP_EOL;
