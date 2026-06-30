use ailabtools::generated::params::CutoutUniversalBackgroundRemovalParams;
use ailabtools::{Client, FileInput, Result};

#[tokio::main]
async fn main() -> Result<()> {
    let client = Client::new(std::env::var("AILAB_API_KEY").expect("AILAB_API_KEY is required"))?;
    let params = CutoutUniversalBackgroundRemovalParams {
        image: FileInput::from_path("image.jpg", Some("image/jpeg"))?,
        return_form: Some("whiteBK".to_string()),
    };
    let response = client.background.remove(params).await?;
    println!("request_id={:?} data={:?}", response.request_id, response.data);
    Ok(())
}
