package ailabtools

import (
	"context"
	"net/http"
)

type CommonAPI struct {
	requester *requester
}

type CommonQueryAsyncTaskResultParams struct {
	TaskID string `form:"task_id"`
}

type CommonQueryAsyncTaskResultResponseData struct {
	TaskStatus int `json:"task_status,omitempty"`
}

type CommonQueryAsyncTaskResultResponse = BaseResponse[CommonQueryAsyncTaskResultResponseData]

func (api *CommonAPI) CommonQueryAsyncTaskResult(ctx context.Context, params CommonQueryAsyncTaskResultParams) (*CommonQueryAsyncTaskResultResponse, error) {
	if err := validateRequired(params, "TaskID"); err != nil {
		return nil, err
	}
	var out CommonQueryAsyncTaskResultResponse
	err := api.requester.request(ctx, http.MethodGet, "/api/common/query-async-task-result", params, nil, false, &out)
	return &out, err
}

type CommonQueryCreditsParams struct {
}

type CommonQueryCreditsResponseData struct {
	UniqueSign          string  `json:"unique_sign,omitempty"`
	Name                string  `json:"name,omitempty"`
	Balance             float64 `json:"balance,omitempty"`
	Total               float64 `json:"total,omitempty"`
	LastRechargeBalance float64 `json:"last_recharge_balance,omitempty"`
	BalanceWarning      float64 `json:"balance_warning,omitempty"`
	FirstBuyTime        int     `json:"first_buy_time,omitempty"`
	LastUpdateTime      int     `json:"last_update_time,omitempty"`
}

type CommonQueryCreditsResponse = BaseResponse[[]CommonQueryCreditsResponseData]

func (api *CommonAPI) CommonQueryCredits(ctx context.Context, params CommonQueryCreditsParams) (*CommonQueryCreditsResponse, error) {
	var out CommonQueryCreditsResponse
	err := api.requester.request(ctx, http.MethodGet, "/api/common/query-credits", params, nil, false, &out)
	return &out, err
}
