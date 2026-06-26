from .http import Requester
from .utils import map_params
from .generated.endpoints import (
    CommonQueryAsyncTaskResultParams,
    CommonQueryAsyncTaskResultResponse,
    CommonQueryAsyncTaskResultParamMap,
    validate_commonQueryAsyncTaskResult_params,
    CommonQueryCreditsParams,
    CommonQueryCreditsResponse,
    CommonQueryCreditsParamMap,
    validate_commonQueryCredits_params
)

class CommonAPI:
    def __init__(self, requester: Requester):
        self._requester = requester

    async def commonQueryAsyncTaskResult(self, params: CommonQueryAsyncTaskResultParams) -> CommonQueryAsyncTaskResultResponse:
        validate_commonQueryAsyncTaskResult_params(params)
        mapped = map_params(params, CommonQueryAsyncTaskResultParamMap)
        return await self._requester.request('GET', '/api/common/query-async-task-result', query=mapped)

    async def commonQueryCredits(self, params: CommonQueryCreditsParams) -> CommonQueryCreditsResponse:
        validate_commonQueryCredits_params(params)
        mapped = map_params(params, CommonQueryCreditsParamMap)
        return await self._requester.request('GET', '/api/common/query-credits', query=mapped)
