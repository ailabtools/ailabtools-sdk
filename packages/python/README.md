# AILabTools Python SDK (async)

Official async Python SDK for AILabTools APIs.

- Get an API key: [AILabTools Developer Console](https://www.ailabtools.com/developer)
- Official API documentation: [AILabTools API Docs](https://www.ailabtools.com/docs)
- Repository: [AILabTools SDK on GitHub](https://github.com/ailabtools/ailabtools-sdk)

## Installation

```bash
pip install ailabtools-sdk
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

```py
import os
import asyncio
from ailabtools import AILabClient

async def main():
    client = AILabClient(api_key=os.environ["AILAB_API_KEY"])
    credits = await client.common.commonQueryCredits({})
    print(credits.get("data"))
    await client.aclose()

asyncio.run(main())
```

## Example: Image Upscaling

```py
import os
import asyncio
from ailabtools import AILabClient

async def main():
    client = AILabClient(api_key=os.environ["AILAB_API_KEY"])
    with open("./image.jpg", "rb") as image:
        result = await client.image.imageLosslessEnlargement({
            "image": image,
            "upscaleFactor": "2",
        })
    print(result.get("data"))
    await client.aclose()

asyncio.run(main())
```

## Parameter Mapping

The SDK exposes camelCase parameters, for example `upscaleFactor`, and maps them to API field names such as `upscale-factor` internally.

## File Uploads

File parameters support file-like objects with a `read` method, or `bytes` / `bytearray`.

## Async Tasks

Async APIs return `task_id`. Poll results with `commonQueryAsyncTaskResult({"taskId": ...})`.

## API Reference

- Official API docs: [AILabTools API Documentation](https://www.ailabtools.com/docs)
- SDK API docs: [AILabTools SDK Documentation](https://github.com/ailabtools/ailabtools-sdk/tree/main/docs)

## Testing

```bash
AILAB_API_KEY=xxx pytest -q
```

## License

MIT
