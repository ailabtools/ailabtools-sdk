# AILabTools SDK 完整使用手册

包含安装、认证、调用方式、异步任务、上传、错误处理与常见问题。

## 安装

### Node.js
```bash
npm install ailabtools
```

### Python
```bash
pip install ailabtools
```

## 认证与初始化

```ts
import { AILabClient } from "ailabtools";
const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });
```

```py
from ailabtools import AILabClient
client = AILabClient(api_key="YOUR_KEY")
```

## 文件上传

- Node: `Buffer | ArrayBuffer | Uint8Array`
- Python: file-like / bytes / bytearray

## 异步任务

- 异步 API 返回 `task_id`
- 使用 `commonQueryAsyncTaskResult({ taskId })` 轮询

## 错误处理

- Node: 捕获 `AILabApiError`
- Python: 捕获 `AILabApiError`

## API 索引

- 详见 `docs/common.md` / `docs/image.md` / `docs/portrait.md` / `docs/cutout.md`
