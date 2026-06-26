# Error Codes and Troubleshooting

Use `request_id` and `log_id` when contacting AILabTools support. They identify the exact API request and make issue diagnosis faster.

## Common Errors

| HTTP Status | Error | Meaning | How to fix |
| --- | --- | --- | --- |
| 400 | MISSING_PARAMETERS | Required parameters are missing. | Check the SDK params object and make sure required file and option fields are provided. |
| 400 | ERROR_INVALID_PARAMETER | A parameter value is invalid. | Check enum values, numeric ranges, and camelCase-to-API field mapping. |
| 401 | ERROR_USER_NOT_EXISTS | Invalid or unknown API key. | Check `AILAB_API_KEY` and make sure the request uses the `ailabapi-api-key` header. |
| 403 | ERROR_USER_LOCKED | Account is locked or access is restricted. | Contact support with `request_id` and `log_id`. |
| 404 | ERROR_AI_NOT_EXISTS | The API path or capability is unavailable. | Confirm the endpoint in the [AILabTools API Documentation](https://www.ailabtools.com/docs). |
| 413 | FILE_SIZE_EXCEEDS_LIMIT | Uploaded file is too large. | Compress the image or use a smaller input file. |
| 413 | FILE_RESOLUTION_EXCEEDS_LIMITS | Uploaded image resolution is too high. | Resize the image before upload. |
| 415 | UNSUPPORTED_FILE_TYPES | The uploaded file type is unsupported. | Use a supported image format such as JPG, PNG, WebP, or BMP. |
| 422 | FILE_DECODING_FAILURE | The uploaded file cannot be decoded as an image. | Re-export or convert the image, then upload again. |
| 422 | ERROR_NO_FACE_IN_FILE | No face was detected. | Use a clear frontal portrait with visible facial features. |
| 422 | ERROR_FACE_SIZE_RATIO_NOT_MET | The detected face is too small. | Crop the image so the face takes up more of the frame. |
| 422 | ERROR_BLURRY_FACE | The face is too blurry. | Use a sharper image with better lighting. |
| 422 | ERROR_CONTENT_NON_COMPLIANCE | The input or generated content failed safety review. | Use compliant source material and avoid restricted content. |
| 429 | ERROR_NOT_ENOUGH_CREDITS | The account does not have enough credits. | Add credits in the [AILabTools Developer Console](https://www.ailabtools.com/developer). |
| 429 | EXCEEDING_LIMITS | Request or concurrency limits were exceeded. | Reduce concurrency and retry with exponential backoff. |
| 500 | PROCESSING_FAILURE | The service failed while processing the request. | Retry once. If it persists, contact support with `request_id` and `log_id`. |
| 502 | AI_SERVICE_ERROR | Upstream AI service error. | Retry with backoff or try again later. |
| 503 | ERROR_INSUFFICIENT_RESOURCES | Temporary resource shortage. | Retry later or reduce request volume. |
| 504 | AI_SERVICE_TIMEOUT | Processing timed out. | Retry or use an async API when available. |

## Retry Guidance

| Scenario | Retry? | Recommendation |
| --- | --- | --- |
| Missing or invalid parameters | No | Fix the request before retrying. |
| Authentication errors | No | Check the API key and account status. |
| Content or face quality errors | No | Use a better input image. |
| Rate limit errors | Yes | Retry with exponential backoff and lower concurrency. |
| 5xx or timeout errors | Yes | Retry a small number of times with backoff. |

## Node.js Example

```ts
try {
  const result = await client.cutout.cutoutUniversalBackgroundRemoval({
    image: readFileSync("./photo.jpg"),
    returnForm: "whiteBK",
  });

  console.log(result.data?.image_url);
} catch (error) {
  console.error("AILabTools API Error:", error);
  // Send request_id and log_id to support if you need help.
}
```

## Python Example

```py
try:
    with open("./photo.jpg", "rb") as image:
        result = await client.cutout.cutoutUniversalBackgroundRemoval({
            "image": image,
            "returnForm": "whiteBK",
        })
    print(result["data"]["image_url"])
except Exception as error:
    print("AILabTools API Error:", error)
    # Send request_id and log_id to support if you need help.
```
