# AILabTools Node SDK (TypeScript)

## Installation

```bash
npm install ailabtools
```

## Quick Start

```ts
import { AILabClient } from 'ailabtools';

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });
const credits = await client.common.commonQueryCredits({});
console.log(credits.data);
```

## Parameter Mapping

The SDK exposes camelCase parameters, for example `upscaleFactor`, and maps them to API field names such as `upscale-factor` internally.

## File Uploads

`FileInput` supports `Buffer | ArrayBuffer | Uint8Array`.

## Async Tasks

Async APIs return `task_id`. Poll results with `commonQueryAsyncTaskResult({ taskId })`.

## Error Handling

API errors throw `AILabApiError`, which includes troubleshooting fields such as `requestId` and `logId`.

## Testing

```bash
AILAB_API_KEY=xxx npm test
```
