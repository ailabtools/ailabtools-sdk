//! Official Rust SDK for AILabTools AI image and portrait APIs.

pub mod api;
pub mod client;
pub mod error;
pub mod file_input;
pub mod generated;
pub mod params;
pub mod requester;

pub use client::{Client, ClientBuilder, WaitForTaskOptions};
pub use error::{ApiError, Error, Result};
pub use file_input::FileInput;
