<?php

declare(strict_types=1);

require __DIR__ . '/../../packages/php/vendor/autoload.php';

use AILabTools\AILabClient;
use AILabTools\Generated\Params\PortraitHairstyleEditingProParams;
use AILabTools\Http\FileInput;

$client = new AILabClient(apiKey: getenv('AILAB_API_KEY') ?: '');
$task = $client->portrait->changeHairstyle(
    new PortraitHairstyleEditingProParams(
        taskType: 'async',
        image: FileInput::fromPath(__DIR__ . '/../../image.jpg'),
        hairStyle: 'BuzzCut',
    ),
);

$taskId = $task->taskId ?? $task->data?->taskId;
$result = $client->waitForTask(taskId: $taskId);
var_dump($result->data);
