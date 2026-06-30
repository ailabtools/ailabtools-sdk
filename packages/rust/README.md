# AILabTools Rust SDK

Official Rust SDK for the [AILabTools AI Image APIs](https://www.ailabtools.com/docs). It supports background removal, image upscaling, object removal, portrait retouching, hairstyle changes, virtual try-on, skin analysis, and other AI image workflows.

## Requirements

- Rust 1.70 or later
- Tokio or another async runtime compatible with `reqwest`

## Installation

```toml
[dependencies]
ailabtools = "0.5.4"
```

## Quick Start

Create an API key in the [AILabTools Developer Console](https://www.ailabtools.com/developer).

```rust
use ailabtools::{Client, FileInput, Result};
use ailabtools::generated::params::CutoutUniversalBackgroundRemovalParams;

#[tokio::main]
async fn main() -> Result<()> {
    let client = Client::new(std::env::var("AILAB_API_KEY").unwrap())?;

    let params = CutoutUniversalBackgroundRemovalParams {
        image: FileInput::from_path("photo.jpg", Some("image/jpeg"))?,
        return_form: Some("whiteBK".to_string()),
    };

    let result = client.background.remove(params).await?;
    println!("{:?}", result.data);
    Ok(())
}
```

## File Uploads

```rust
FileInput::from_path("photo.jpg", Some("image/jpeg"))?;
FileInput::from_bytes(bytes, "photo.jpg", Some("image/jpeg"));
```

## Popular Aliases

| Use case | Rust method |
| --- | --- |
| Remove image background | `client.background.remove(params).await` |
| Upscale an image | `client.image.upscale(params).await` |
| Remove objects | `client.image.remove_objects(params).await` |
| Change hairstyle | `client.portrait.change_hairstyle(params).await` |
| Retouch portrait | `client.portrait.retouch(params).await` |

## Async Tasks

```rust
let task = client.portrait.change_hairstyle(params).await?;
let task_id = task.task_id.expect("missing task id");
let result = client.wait_for_task(&task_id, None).await?;
println!("{:?}", result.data);
```

## Error Handling

```rust
match client.background.remove(params).await {
    Ok(result) => println!("{:?}", result.data),
    Err(ailabtools::Error::Api(error)) => {
        eprintln!("{} {:?} {:?}", error.message, error.request_id, error.log_id);
    }
    Err(error) => eprintln!("{error}"),
}
```

## crates.io Publishing

Before publishing:

1. Log in with `cargo login`.
2. Run `cargo publish --dry-run`.
3. Run `cargo publish`.

The crate name is `ailabtools`.

## Links

- [Get an AILabTools API key](https://www.ailabtools.com/developer)
- [AILabTools API documentation](https://www.ailabtools.com/docs)
- [AILabTools SDK source code](https://github.com/ailabtools/ailabtools-sdk)
- [Report an SDK issue](https://github.com/ailabtools/ailabtools-sdk/issues)

## License

[MIT](LICENSE)
