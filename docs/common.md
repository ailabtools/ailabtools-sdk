# Common API Reference

> This document is generated from the active endpoints in `packages/spec.json`. Disabled platform endpoints are intentionally excluded.

## Querying Async Task Results API

- SDK method: `common.commonQueryAsyncTaskResult()`
- HTTP: `GET /api/common/query-async-task-result`

### Query Parameters

| Field | Type | Required | Description |
| --- | --- | --- | --- |
| task_id | string | Yes | The task_id returned by the asynchronous API. |

### Request URL

```text
https://www.ailabapi.com/api/common/query-async-task-result
```

### Response Fields

| Field | Type | Description |
| --- | --- | --- |
| task_status | integer | Asynchronous task status. 0: The task is queued. 1: Asynchronous processing. 2: Processing was successful. |

### SDK Return Type

- `BaseResponse<CommonQueryAsyncTaskResultResponseData>`

## Querying Credits API

- SDK method: `common.commonQueryCredits()`
- HTTP: `GET /api/common/query-credits`

### Parameters

None.

### Request URL

```text
https://www.ailabapi.com/api/common/query-credits
```

### Response Fields

| Field | Type | Description |
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

### SDK Return Type

- `BaseResponse<CommonQueryCreditsResponseData[]>`
