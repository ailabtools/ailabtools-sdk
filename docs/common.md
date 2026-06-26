# Common API 参考

> 本文档按当前 `packages/spec.json` 的 active 接口生成，已移除平台停用接口。

## Querying Async Task Results API

- SDK 方法：`common.commonQueryAsyncTaskResult()`
- HTTP：`GET /api/common/query-async-task-result`

### Query 参数

| 字段 | 类型 | 必填 | 说明 |
| --- | --- | --- | --- |
| task_id | string | 是 | The task_id returned by the asynchronous API. |

### 请求地址

```text
https://www.ailabapi.com/api/common/query-async-task-result
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| task_status | integer | Asynchronous task status. 0: The task is queued. 1: Asynchronous processing. 2: Processing was successful. |

### 返回类型

- `BaseResponse<CommonQueryAsyncTaskResultResponseData>`

## Querying Credits API

- SDK 方法：`common.commonQueryCredits()`
- HTTP：`GET /api/common/query-credits`

### 参数

无

### 请求地址

```text
https://www.ailabapi.com/api/common/query-credits
```

### 响应字段

| 字段 | 类型 | 说明 |
| --- | --- | --- |
| data | array |  |
| unique_sign | string | Unique identification. |
| name | string | Name. |
| balance | float | Credit Balance. |
| total | float | Total Credits. |
| last_recharge_balance | float | Balance after last purchase. |
| balance_warning | float | Credit Balance Early Warning Value. |
| first_buy_time | integer | Time of first purchase. |
| last_update_time | integer | Last update time. |

### 返回类型

- `BaseResponse<CommonQueryCreditsResponseData[]>`
