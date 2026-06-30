use ailabtools::generated::params::{CommonQueryCreditsParams, CutoutUniversalBackgroundRemovalParams};
use ailabtools::params::ApiParams;
use ailabtools::FileInput;

#[test]
fn query_params_can_be_empty() {
    let params = CommonQueryCreditsParams::new();
    assert!(params.query_pairs().is_empty());
}

#[test]
fn file_input_from_bytes_sets_metadata() {
    let file = FileInput::from_bytes(vec![1, 2, 3], "photo.jpg", Some("image/jpeg"));
    assert_eq!(file.filename, "photo.jpg");
    assert_eq!(file.content_type, "image/jpeg");
}

#[test]
fn multipart_params_accept_optional_fields() {
    let params = CutoutUniversalBackgroundRemovalParams {
        image: FileInput::from_bytes(vec![1, 2, 3], "photo.jpg", Some("image/jpeg")),
        return_form: Some("whiteBK".to_string()),
    };
    assert!(params.multipart_form().is_ok());
}
