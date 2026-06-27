# Security and Data Handling

## API Keys

- Store API keys in environment variables or a secrets manager.
- Never embed an API key in browser, mobile, desktop, or distributed client
  applications. Send requests through a trusted server instead.
- Do not commit `.env` files, shell history, CI logs, or test fixtures that
  contain credentials.
- Rotate a key immediately if it is exposed.

## Image Data

- Send only images that your application is authorized to process.
- Validate file type, size, resolution, and content before upload.
- Avoid logging image bytes, multipart bodies, signed result URLs, or sensitive
  response metadata.
- Many official API pages state that uploaded files are not retained and that
  generated files are automatically deleted after a limited period, commonly
  24 hours. Confirm the policy on the specific
  [API documentation page](https://www.ailabtools.com/docs) used by your
  application.

## Result URLs

- Treat result URLs as sensitive temporary credentials.
- Download required results promptly into storage controlled by your
  application.
- Apply your own access controls, retention period, and deletion policy.
- Do not assume an expired platform URL satisfies your legal or compliance
  obligations.

## Logging and Support

- Record `request_id` and `log_id` for troubleshooting, but do not attach API
  keys or source images to normal application logs.
- Redact credentials and personal data before sharing diagnostics.
- Use TLS and keep the default HTTPS API base URL in production.

The SDK provides transport and typed API access; application owners remain
responsible for consent, privacy notices, data retention, and regulatory
requirements.
