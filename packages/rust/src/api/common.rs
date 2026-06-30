use crate::generated::params::*;
use crate::generated::responses::*;
use crate::requester::Requester;
use crate::Result;
use reqwest::Method;

#[derive(Clone)]
pub struct CommonApi { requester: Requester }
impl CommonApi {
    pub(crate) fn new(requester: Requester) -> Self { Self { requester } }
    pub async fn common_query_async_task_result(&self, params: CommonQueryAsyncTaskResultParams) -> Result<CommonQueryAsyncTaskResultResponse> {
        self.requester.request(Method::GET, "/api/common/query-async-task-result", params).await
    }
    pub async fn common_query_credits(&self, params: CommonQueryCreditsParams) -> Result<CommonQueryCreditsResponse> {
        self.requester.request(Method::GET, "/api/common/query-credits", params).await
    }
}
