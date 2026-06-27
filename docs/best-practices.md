# SDK Best Practices and Performance

## Client Reuse

- Create one SDK client per service configuration and reuse it across requests.
- Do not create a new HTTP client for every image.
- Close the Python client with `await client.aclose()`.
- Close a Dart client with `client.close()` when it owns the HTTP client.
- Injected HTTP clients remain caller-owned unless the package README says
  otherwise.

## Timeouts

The default request timeout is 30 seconds. Increase it for large uploads or
synchronous image processing, but keep a finite upper bound.

| SDK | Timeout configuration |
| --- | --- |
| Node.js | `new AILabClient({ apiKey, timeoutMs: 60_000 })` |
| Python | `AILabClient(api_key=key, timeout=60)` |
| Go | `ailabtools.NewClient(key, ailabtools.WithTimeout(60*time.Second))` |
| Dart / Flutter | `AILabClient(apiKey: key, timeout: const Duration(seconds: 60))` |
| PHP | `new AILabClient(apiKey: $key, timeout: 60)` |
| Java | `AILabClient.builder(key).timeout(Duration.ofSeconds(60)).build()` |

Use async APIs for work that regularly exceeds the normal request timeout.

## Retry Strategy

- Retry connection failures, `429`, and transient `5xx` responses with
  exponential backoff and jitter.
- A practical retry sequence is approximately 1, 2, 4, and 8 seconds, capped by
  the request's overall deadline.
- Respect server retry guidance when supplied.
- Do not retry authentication, validation, unsupported-file, face-quality, or
  content-review errors without changing the request.
- Reopen file streams before retrying a multipart request.

## Concurrency

- Bound concurrency explicitly instead of submitting an unbounded batch.
- Select the initial limit from your account quota and endpoint behavior. A
  small value such as 3 is safer for initial testing; it is not a platform
  guarantee.
- Reduce concurrency when the API returns `429` or processing latency rises.
- Use queues and per-request deadlines for production batch workloads.

## Async Tasks

- Persist the task ID with your own job identifier.
- Poll at an interval such as five seconds; avoid tight polling loops.
- Set a total polling timeout and handle terminal failure status.
- Resume polling after process restarts instead of submitting duplicate work.
- Download successful results promptly because result URLs are temporary.

## Files and Memory

- Validate documented file format, size, resolution, face ratio, and image
  count before upload.
- Prefer streams or file paths for large inputs where the SDK supports them.
- Avoid retaining input and output byte arrays longer than required.
- Use a unique filename and correct content type for in-memory uploads.

## Observability

- Record endpoint name, duration, status, `request_id`, and `log_id`.
- Never log API keys, multipart bodies, image bytes, or sensitive result URLs.
- Track retries, task duration, failure categories, and credit-related errors.
- See [Error Codes and Troubleshooting](errors.md) and
  [Security and Data Handling](security.md).
