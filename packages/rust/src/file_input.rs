use crate::Result;
use std::path::Path;

#[derive(Debug, Clone)]
pub struct FileInput {
    pub bytes: Vec<u8>,
    pub filename: String,
    pub content_type: String,
}

impl FileInput {
    pub fn from_path(path: impl AsRef<Path>, content_type: Option<&str>) -> Result<Self> {
        let path = path.as_ref();
        let bytes = std::fs::read(path)?;
        let filename = path
            .file_name()
            .and_then(|name| name.to_str())
            .unwrap_or("upload.bin")
            .to_string();
        Ok(Self::from_bytes(bytes, filename, content_type))
    }

    pub fn from_bytes(bytes: impl Into<Vec<u8>>, filename: impl Into<String>, content_type: Option<&str>) -> Self {
        Self {
            bytes: bytes.into(),
            filename: filename.into(),
            content_type: content_type.unwrap_or("application/octet-stream").to_string(),
        }
    }
}
