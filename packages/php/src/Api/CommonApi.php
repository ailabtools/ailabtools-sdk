<?php

declare(strict_types=1);

namespace AILabTools\Api;

use AILabTools\Http\Requester;
use AILabTools\Generated\Params\CommonQueryAsyncTaskResultParams;
use AILabTools\Generated\Response\CommonQueryAsyncTaskResultResponse;
use AILabTools\Generated\Params\CommonQueryCreditsParams;
use AILabTools\Generated\Response\CommonQueryCreditsResponse;

final class CommonApi
{
    public function __construct(private readonly Requester $requester)
    {
    }

    public function commonQueryAsyncTaskResult(CommonQueryAsyncTaskResultParams $params): CommonQueryAsyncTaskResultResponse
    {
        /** @var CommonQueryAsyncTaskResultResponse */
        return $this->requester->request('GET', '/api/common/query-async-task-result', $params->toArray(), false, [CommonQueryAsyncTaskResultResponse::class, 'fromArray']);
    }

    public function commonQueryCredits(CommonQueryCreditsParams $params): CommonQueryCreditsResponse
    {
        /** @var CommonQueryCreditsResponse */
        return $this->requester->request('GET', '/api/common/query-credits', $params->toArray(), false, [CommonQueryCreditsResponse::class, 'fromArray']);
    }

}
