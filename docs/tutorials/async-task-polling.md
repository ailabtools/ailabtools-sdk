# Async Task Polling with AILabTools SDK

Some AI image APIs return a `task_id` because processing takes longer than a normal HTTP request. Every SDK provides a polling helper that waits until the task succeeds, fails, or times out.

## Node.js / TypeScript

```ts
import { readFileSync } from "node:fs";
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

const task = await client.portrait.changeHairstyle({
  taskType: "async",
  image: readFileSync("./portrait.jpg"),
  hairStyle: "BuzzCut",
  color: "blonde",
});

const taskId = task.task_id || task.data?.task_id;
const result = await client.waitForTask(taskId!, {
  intervalMs: 5000,
  timeoutMs: 300000,
  throwOnFailed: true,
});

console.log(result.data);
```

## Python Async

```py
from ailabtools import AILabClient

client = AILabClient(api_key=os.environ["AILAB_API_KEY"])

with open("./portrait.jpg", "rb") as image:
    task = await client.portrait.change_hairstyle({
        "taskType": "async",
        "image": image,
        "hairStyle": "BuzzCut",
        "color": "blonde",
    })

task_id = task.get("task_id") or task.get("data", {}).get("task_id")
result = await client.wait_for_task(task_id, interval=5, timeout=300, raise_on_failed=True)
print(result.get("data"))
await client.aclose()
```

## Go

```go
task, err := client.Portrait.ChangeHairstyle(ctx, ailabtools.PortraitHairstyleEditingProParams{
    TaskType:  "async",
    Image:     ailabtools.FileFromPath("./portrait.jpg"),
    HairStyle: "BuzzCut",
    Color:     "blonde",
})
if err != nil {
    return err
}

taskID := task.TaskID
if taskID == "" {
    taskID = task.Data.TaskID
}
result, err := client.WaitForTask(ctx, taskID, &ailabtools.WaitForTaskOptions{
    Interval: 5 * time.Second,
    Timeout:  5 * time.Minute,
})
```

## Dart / Flutter

```dart
final task = await client.portrait.changeHairstyle(params);
final taskId = task.taskId ?? task.data?.taskId;
final result = await client.waitForTask(
  taskId!,
  interval: const Duration(seconds: 5),
  timeout: const Duration(minutes: 5),
);
```

## PHP

```php
$task = $client->portrait->changeHairstyle($params);
$taskId = $task->taskId ?? $task->data?->taskId;
$result = $client->waitForTask(
    taskId: $taskId,
    intervalSeconds: 5,
    timeoutSeconds: 300,
);
```

## Java

```java
var task = client.portrait().changeHairstyle(params);
String taskId = task.getTaskId() != null
        ? task.getTaskId()
        : task.getData().getTaskId();
var result = client.waitForTask(
        taskId,
        Duration.ofSeconds(5),
        Duration.ofMinutes(5),
        true);
```

Use task polling for hairstyle generation and other long-running AILabTools AI image processing APIs.
