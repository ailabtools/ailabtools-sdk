# Async Task Polling with AILabTools SDK

Some AI image APIs return a `task_id` because processing takes longer than a normal HTTP request. The SDK provides `waitForTask` for Node.js and `wait_for_task` for Python to poll until the task succeeds, fails, or times out.

## Node.js / TypeScript

```ts
import { readFileSync } from "node:fs";
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

const task = await client.portrait.changeHairstyle({
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
        "image": image,
        "hairStyle": "BuzzCut",
        "color": "blonde",
    })

task_id = task.get("task_id") or task.get("data", {}).get("task_id")
result = await client.wait_for_task(task_id, interval=5, timeout=300, raise_on_failed=True)
print(result.get("data"))
await client.aclose()
```

Use task polling for hairstyle generation and other long-running AILabTools AI image processing APIs.
