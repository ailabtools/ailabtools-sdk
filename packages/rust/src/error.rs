use serde_json::Value;
use std::fmt;

pub type Result<T> = std::result::Result<T, Error>;

#[derive(Debug)]
pub enum Error {
    Api(ApiError),
    Http(reqwest::Error),
    Json(serde_json::Error),
    Io(std::io::Error),
    Message(String),
}

#[derive(Debug, Clone)]
pub struct ApiError {
    pub message: String,
    pub status_code: u16,
    pub request_id: Option<String>,
    pub log_id: Option<String>,
    pub error_code: Option<i64>,
    pub raw: Value,
}

impl fmt::Display for Error {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        match self {
            Error::Api(error) => write!(f, "AILabTools API error: {}", error.message),
            Error::Http(error) => write!(f, "AILabTools HTTP error: {error}"),
            Error::Json(error) => write!(f, "AILabTools JSON error: {error}"),
            Error::Io(error) => write!(f, "AILabTools IO error: {error}"),
            Error::Message(message) => write!(f, "AILabTools SDK error: {message}"),
        }
    }
}

impl fmt::Display for ApiError {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{}", self.message)
    }
}

impl std::error::Error for Error {}
impl std::error::Error for ApiError {}

impl From<reqwest::Error> for Error {
    fn from(error: reqwest::Error) -> Self { Self::Http(error) }
}

impl From<serde_json::Error> for Error {
    fn from(error: serde_json::Error) -> Self { Self::Json(error) }
}

impl From<std::io::Error> for Error {
    fn from(error: std::io::Error) -> Self { Self::Io(error) }
}
