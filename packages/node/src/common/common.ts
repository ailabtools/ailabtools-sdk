import { Requester } from "../http";
import { mapParams } from "../utils";
import {
  CommonQueryAsyncTaskResultParams,
  CommonQueryAsyncTaskResultResponse,
  CommonQueryAsyncTaskResultResponseData,
  validateCommonQueryAsyncTaskResultParams,
  CommonQueryAsyncTaskResultParamMap,
  CommonQueryCreditsParams,
  CommonQueryCreditsResponse,
  CommonQueryCreditsResponseData,
  validateCommonQueryCreditsParams,
  CommonQueryCreditsParamMap
} from "../generated/endpoints";

export class CommonAPI {
  constructor(private request: Requester) {}

  async commonQueryAsyncTaskResult(params: CommonQueryAsyncTaskResultParams): Promise<CommonQueryAsyncTaskResultResponse> {
    validateCommonQueryAsyncTaskResultParams(params);
    const mapped = mapParams(params, CommonQueryAsyncTaskResultParamMap);
    return this.request.request<CommonQueryAsyncTaskResultResponseData>("GET", "/api/common/query-async-task-result", { query: mapped });
  }

  async commonQueryCredits(params: CommonQueryCreditsParams): Promise<CommonQueryCreditsResponse> {
    validateCommonQueryCreditsParams(params);
    const mapped = mapParams(params, CommonQueryCreditsParamMap);
    return this.request.request<CommonQueryCreditsResponseData[]>("GET", "/api/common/query-credits", { query: mapped });
  }

}
