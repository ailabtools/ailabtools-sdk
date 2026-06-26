# AILabTools SDK Full Usage Guide

This guide covers installation, authentication, request patterns, async tasks, file uploads, error handling, and API references.

## Quick Start

### 1. Get your API key

Create or copy your API key from the AILabTools developer console:

[Get your AILabTools API key](https://www.ailabtools.com/developer)

Official API documentation is available at:

[AILabTools API Documentation](https://www.ailabtools.com/docs)

### 2. Install the SDK

Node.js:

```bash
npm install ailabtools
```

Python:

```bash
pip install ailabtools-sdk
```

### 3. Configure your environment

```bash
export AILAB_API_KEY="your_api_key_here"
```

### 4. Initialize the client

```ts
import { AILabClient } from "ailabtools";
const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });
```

```py
import os
from ailabtools import AILabClient
client = AILabClient(api_key=os.environ["AILAB_API_KEY"])
```

## File Uploads

- Node.js: `Buffer | ArrayBuffer | Uint8Array`
- Python: file-like objects, `bytes`, or `bytearray`

## Async Tasks

- Async APIs return `task_id`.
- Poll results with `commonQueryAsyncTaskResult({ taskId })`.

## Error Handling

- Node.js: catch `AILabApiError`.
- Python: catch `AILabApiError`.

## API Index

See `docs/common.md`, `docs/image.md`, `docs/portrait.md`, and `docs/cutout.md` for the full API reference.
