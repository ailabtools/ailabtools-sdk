# AILabTools Python SDK (async)

## Installation

```bash
pip install ailabtools
```

## Quick Start

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

## Parameter Mapping

The SDK exposes camelCase parameters, for example `upscaleFactor`, and maps them to API field names such as `upscale-factor` internally.

## File Uploads

File parameters support file-like objects with a `read` method, or `bytes` / `bytearray`.

## Async Tasks

Async APIs return `task_id`. Poll results with `commonQueryAsyncTaskResult({"taskId": ...})`.

## Testing

```bash
AILAB_API_KEY=xxx pytest -q
```
