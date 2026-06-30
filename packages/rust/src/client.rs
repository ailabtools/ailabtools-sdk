use crate::api::{BackgroundApi, CommonApi, CutoutApi, ImageApi, PortraitApi};
use crate::generated::params::CommonQueryAsyncTaskResultParams;
use crate::generated::responses::CommonQueryAsyncTaskResultResponse;
use crate::requester::Requester;
use crate::{Error, Result};
use std::time::Duration;

#[derive(Clone)]
pub struct Client {
    pub common: CommonApi,
    pub cutout: CutoutApi,
    pub image: ImageApi,
    pub portrait: PortraitApi,
    pub background: BackgroundApi,
}

pub struct ClientBuilder {
    api_key: String,
    base_url: String,
    timeout: Duration,
}

#[derive(Debug, Clone)]
pub struct WaitForTaskOptions {
    pub interval: Duration,
    pub timeout: Duration,
    pub raise_on_failed: bool,
}

impl Default for WaitForTaskOptions {
    fn default() -> Self {
        Self {
            interval: Duration::from_secs(5),
            timeout: Duration::from_secs(300),
            raise_on_failed: true,
        }
    }
}

impl Client {
    pub fn new(api_key: impl Into<String>) -> Result<Self> {
        Self::builder(api_key).build()
    }

    pub fn builder(api_key: impl Into<String>) -> ClientBuilder {
        ClientBuilder {
            api_key: api_key.into(),
            base_url: "https://www.ailabapi.com".to_string(),
            timeout: Duration::from_secs(120),
        }
    }

    pub async fn wait_for_task(&self, task_id: &str, options: Option<WaitForTaskOptions>) -> Result<CommonQueryAsyncTaskResultResponse> {
        let options = options.unwrap_or_default();
        let started = std::time::Instant::now();
        loop {
            let result = self
                .common
                .common_query_async_task_result(CommonQueryAsyncTaskResultParams::new(task_id.to_string()))
                .await?;
            let status = result.data.as_ref().and_then(|data| data.task_status);
            if status == Some(2) {
                return Ok(result);
            }
            if status == Some(3) {
                if options.raise_on_failed {
                    return Err(Error::Message(format!("AILabTools task failed: {task_id}")));
                }
                return Ok(result);
            }
            if started.elapsed() >= options.timeout {
                return Err(Error::Message(format!("AILabTools task timed out: {task_id}")));
            }
            tokio::time::sleep(options.interval).await;
        }
    }
}

impl ClientBuilder {
    pub fn base_url(mut self, base_url: impl Into<String>) -> Self {
        self.base_url = base_url.into();
        self
    }

    pub fn timeout(mut self, timeout: Duration) -> Self {
        self.timeout = timeout;
        self
    }

    pub fn build(self) -> Result<Client> {
        let requester = Requester::new(self.api_key, self.base_url, self.timeout)?;
        let common = CommonApi::new(requester.clone());
        let cutout = CutoutApi::new(requester.clone());
        let image = ImageApi::new(requester.clone());
        let portrait = PortraitApi::new(requester);
        let background = BackgroundApi::new(cutout.clone());
        Ok(Client { common, cutout, image, portrait, background })
    }
}
