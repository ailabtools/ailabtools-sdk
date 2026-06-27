// GENERATED FROM packages/spec.json. DO NOT EDIT BY HAND.

import '../requester.dart';
import 'endpoints.dart';

final class CommonAPI {
  const CommonAPI(this._requester);

  final Requester _requester;

  Future<CommonQueryAsyncTaskResultResponse> commonQueryAsyncTaskResult(
    CommonQueryAsyncTaskResultParams params,
  ) =>
      _requester.request<CommonQueryAsyncTaskResultResponseData>(
        method: "GET",
        path: "/api/common/query-async-task-result",
        parseData: (value) => value is Map<String, dynamic>
            ? CommonQueryAsyncTaskResultResponseData.fromJson(value)
            : null,
        query: params.toMap(),
      );

  Future<CommonQueryCreditsResponse> commonQueryCredits(
    CommonQueryCreditsParams params,
  ) =>
      _requester.request<List<CommonQueryCreditsResponseData>>(
        method: "GET",
        path: "/api/common/query-credits",
        parseData: (value) => value is List
            ? value
                .whereType<Map<String, dynamic>>()
                .map(CommonQueryCreditsResponseData.fromJson)
                .toList()
            : null,
        query: params.toMap(),
      );
}
