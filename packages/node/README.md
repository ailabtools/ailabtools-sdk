# AILabTools Node SDK (TypeScript)

Official Node.js TypeScript SDK for AILabTools APIs.

- Get an API key: [AILabTools Developer Console](https://www.ailabtools.com/developer)
- Official API documentation: [AILabTools API Docs](https://www.ailabtools.com/docs)
- Repository: [AILabTools SDK on GitHub](https://github.com/ailabtools/ailabtools-sdk)

## Installation

```bash
npm install ailabtools
```

## Quick Start

### 1. Get your API key

Create or copy your API key from the AILabTools developer console:

[Get your AILabTools API key](https://www.ailabtools.com/developer)

### 2. Configure your environment

```bash
export AILAB_API_KEY="your_api_key_here"
```

### 3. Call the API

```ts
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

const credits = await client.common.commonQueryCredits({});
console.log(credits.data);
```

## Example: Image Upscaling

```ts
import { readFileSync } from "node:fs";
import { AILabClient } from "ailabtools";

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });

const result = await client.image.imageLosslessEnlargement({
  image: readFileSync("./image.jpg"),
  upscaleFactor: "2",
});

console.log(result.data);
```

## Parameter Mapping

The SDK exposes camelCase parameters, for example `upscaleFactor`, and maps them to API field names such as `upscale-factor` internally.

## File Uploads

`FileInput` supports `Buffer | ArrayBuffer | Uint8Array`.

## Async Tasks

Async APIs return `task_id`. Poll results with `commonQueryAsyncTaskResult({ taskId })`.

## API Reference

- Official API docs: [AILabTools API Documentation](https://www.ailabtools.com/docs)
- SDK API docs: [AILabTools SDK Documentation](https://github.com/ailabtools/ailabtools-sdk/tree/main/docs)

## Error Handling

API errors throw `AILabApiError`, which includes troubleshooting fields such as `requestId` and `logId`.

## Testing

```bash
AILAB_API_KEY=xxx npm test
```

## License

MIT
