# AILabTools Python SDK (async)

## 安装

```bash
pip install ailabtools
```

## 快速开始

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

## 参数映射

SDK 对外使用 camelCase，例如 `upscaleFactor`，内部会自动映射到接口字段 `upscale-factor`。

## 文件上传

文件参数支持文件对象（带 `read` 方法）或 `bytes/bytearray`。

## 异步任务

异步任务接口会返回 `task_id`，请使用 `commonQueryAsyncTaskResult({"taskId": ...})` 轮询获取结果。

## 测试

```bash
AILAB_API_KEY=xxx pytest -q
```
