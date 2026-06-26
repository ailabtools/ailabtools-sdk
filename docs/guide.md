# AILabTools SDK Full Usage Guide

This guide covers installation, authentication, request patterns, async tasks, file uploads, error handling, and API references.

## Installation

### Node.js

```bash
npm install ailabtools
```

### Python

```bash
pip install ailabtools
```

## Authentication and Initialization

```ts
import { AILabClient } from "ailabtools";
const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });
```

```py
from ailabtools import AILabClient
client = AILabClient(api_key="YOUR_KEY")
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
