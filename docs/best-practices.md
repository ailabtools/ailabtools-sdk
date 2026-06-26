# SDK Best Practices and Performance

## Requests and Timeouts

- Set a timeout for every request: Node.js uses `timeoutMs`, Python uses `timeout`.
- Increase the timeout for large file uploads or long-running image processing requests, for example `60s` or more.

## Retry Strategy

- Retry transient network errors and `5xx` responses with exponential backoff such as `1s`, `2s`, `4s`, `8s`.
- Do not retry validation errors, missing-parameter errors, or authentication errors without changing the request.

## Concurrency and Rate Limits

- Keep client-side concurrency bounded. A practical starting point is `3` to `10` concurrent requests.
- If the API returns `429`, reduce concurrency and increase backoff.

## Async Tasks

- Poll async task results every `5s` by default.
- Download generated assets promptly. Platform-side async results are only retained for a limited time.
