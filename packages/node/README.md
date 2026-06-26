# AILabTools Node SDK (TypeScript)

## 安装

```bash
npm install ailabtools
```

## 快速开始

```ts
import { AILabClient } from 'ailabtools';

const client = new AILabClient({ apiKey: process.env.AILAB_API_KEY! });
const credits = await client.common.commonQueryCredits({});
console.log(credits.data);
```

## 参数映射

SDK 对外使用 camelCase，例如 `upscaleFactor`，内部会自动映射到接口字段 `upscale-factor`。

## 文件上传

`FileInput` 支持 `Buffer | ArrayBuffer | Uint8Array`。

## 异步任务

异步任务接口会返回 `task_id`，请使用 `commonQueryAsyncTaskResult({ taskId })` 轮询获取结果。

## 错误处理

接口错误会抛出 `AILabApiError`，包含 `requestId` / `logId` 等排查信息。

## 测试

```bash
AILAB_API_KEY=xxx npm test
```
