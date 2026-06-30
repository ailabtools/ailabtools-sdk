use crate::error::{ApiError, Error, Result};
use crate::params::ApiParams;
use reqwest::Method;
use serde::de::DeserializeOwned;
use serde_json::Value;
use std::time::Duration;

#[derive(Clone)]
pub struct Requester {
    client: reqwest::Client,
    api_key: String,
    base_url: String,
}

impl Requester {
    pub fn new(api_key: impl Into<String>, base_url: impl Into<String>, timeout: Duration) -> Result<Self> {
        let api_key = api_key.into();
        if api_key.is_empty() {
            return Err(Error::Message("AILabTools API key must not be empty".to_string()));
        }
        let client = reqwest::Client::builder().timeout(timeout).build()?;
        Ok(Self {
            client,
            api_key,
            base_url: base_url.into().trim_end_matches('/').to_string(),
        })
    }

    pub async fn request<P, T>(&self, method: Method, path: &str, params: P) -> Result<T>
    where
        P: ApiParams,
        T: DeserializeOwned,
    {
        let url = format!("{}/{}", self.base_url, path.trim_start_matches('/'));
        let mut request = self
            .client
            .request(method.clone(), url)
            .header("ailabapi-api-key", &self.api_key);

        if method == Method::GET {
            let query = params.query_pairs();
            if !query.is_empty() {
                request = request.query(&query);
            }
        } else {
            request = request.multipart(params.multipart_form()?);
        }

        let response = request.send().await?;
        let status = response.status();
        let text = response.text().await?;
        let raw: Value = serde_json::from_str(&text)?;
        let error_code = raw.get("error_code").and_then(Value::as_i64).unwrap_or(0);
        if !status.is_success() || error_code != 0 {
            let message = raw
                .get("error_detail")
                .and_then(|detail| detail.get("message"))
                .and_then(Value::as_str)
                .or_else(|| raw.get("error_msg").and_then(Value::as_str))
                .unwrap_or("AILabTools API Error")
                .to_string();
            return Err(Error::Api(ApiError {
                message,
                status_code: status.as_u16(),
                request_id: raw.get("request_id").and_then(Value::as_str).map(str::to_string),
                log_id: raw.get("log_id").and_then(Value::as_str).map(str::to_string),
                error_code: Some(error_code),
                raw,
            }));
        }
        Ok(serde_json::from_value(raw)?)
    }
}
