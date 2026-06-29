# AILabTools SDK for Ruby

Official Ruby SDK for the [AILabTools AI image APIs](https://www.ailabtools.com/docs). It covers background removal, image upscaling, object removal, portrait retouching, hairstyle changes, virtual try-on, skin analysis, and other AI photo workflows.

## Requirements

- Ruby 2.6 or later
- RubyGems

The SDK uses Ruby standard-library `net/http` and has no runtime gem dependencies.

## Installation

```bash
gem install ailabtools
```

Bundler:

```ruby
gem "ailabtools", "~> 0.5.4"
```

## Quick Start

Create an API key in the [AILabTools Developer Console](https://www.ailabtools.com/developer).

```ruby
require "ailabtools"

client = AILabTools::Client.new(api_key: ENV.fetch("AILAB_API_KEY"))

params = AILabTools::Generated::Params::CutoutUniversalBackgroundRemovalParams.new(
  image: AILabTools::FileInput.from_path("photo.jpg", content_type: "image/jpeg"),
  return_form: "whiteBK"
)

result = client.background.remove(params)
puts result.data&.image_url
```

## File Uploads

```ruby
AILabTools::FileInput.from_path("photo.jpg", content_type: "image/jpeg")
AILabTools::FileInput.from_bytes(bytes, filename: "photo.jpg", content_type: "image/jpeg")
AILabTools::FileInput.from_io(io, filename: "photo.jpg", content_type: "image/jpeg")
```

## Async Tasks

```ruby
task = client.portrait.change_hairstyle(params)
task_id = task.task_id || task.data&.task_id
result = client.wait_for_task(task_id, interval: 5, timeout: 300)
puts result.data&.task_status
```

## Error Handling

```ruby
begin
  result = client.background.remove(params)
rescue AILabTools::APIError => error
  warn error.message
  warn error.request_id
  warn error.log_id
  warn error.error_code
end
```

## Client Configuration

```ruby
client = AILabTools::Client.new(
  api_key: ENV.fetch("AILAB_API_KEY"),
  base_url: "https://www.ailabapi.com",
  timeout: 120
)
```

## Popular Aliases

| Use case | Ruby method |
| --- | --- |
| Remove image background | `client.background.remove(params)` |
| Upscale an image | `client.image.upscale(params)` |
| Remove objects | `client.image.remove_objects(params)` |
| Change hairstyle | `client.portrait.change_hairstyle(params)` |
| Retouch portrait | `client.portrait.retouch(params)` |

## Features

- Typed Ruby parameter and response classes for all 93 SDK endpoints
- Standard-library HTTP transport
- Path, byte-string, and IO file uploads
- Automatic snake_case-to-wire-name parameter mapping
- Structured API exceptions with request and log IDs
- Async task polling
- RubyGems-ready gemspec metadata

## RubyGems Publishing

Before publishing:

1. Create a RubyGems account and configure API credentials.
2. Run `gem build ailabtools.gemspec`.
3. Run `gem push ailabtools-0.5.4.gem`.

The gem name is `ailabtools` and the require name is `ailabtools`.

## Links

- [Get an AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API documentation](https://www.ailabtools.com/docs)
- [AILabTools SDK source code](https://github.com/ailabtools/ailabtools-sdk)
- [Report an SDK issue](https://github.com/ailabtools/ailabtools-sdk/issues)

## License

[MIT](LICENSE)
