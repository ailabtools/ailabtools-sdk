import 'dart:async';

import 'package:http/http.dart' as http;

import 'generated/common_api.dart';
import 'generated/cutout_api.dart';
import 'generated/endpoints.dart';
import 'generated/image_api.dart';
import 'generated/portrait_api.dart';
import 'requester.dart';

final class BackgroundAPI {
  const BackgroundAPI(this._cutout);

  final CutoutAPI _cutout;

  Future<CutoutUniversalBackgroundRemovalResponse> remove(
    CutoutUniversalBackgroundRemovalParams params,
  ) =>
      _cutout.cutoutUniversalBackgroundRemoval(params);
}

final class AILabClient {
  AILabClient({
    required String apiKey,
    String baseUrl = 'https://www.ailabapi.com',
    Duration timeout = const Duration(seconds: 30),
    http.Client? httpClient,
  }) : _requester = Requester(
          apiKey: apiKey,
          baseUrl: baseUrl,
          timeout: timeout,
          httpClient: httpClient,
        ) {
    common = CommonAPI(_requester);
    cutout = CutoutAPI(_requester);
    image = ImageAPI(_requester);
    portrait = PortraitAPI(_requester);
    background = BackgroundAPI(cutout);
  }

  final Requester _requester;
  late final CommonAPI common;
  late final CutoutAPI cutout;
  late final ImageAPI image;
  late final PortraitAPI portrait;
  late final BackgroundAPI background;

  Future<CommonQueryAsyncTaskResultResponse> waitForTask(
    String taskId, {
    Duration interval = const Duration(seconds: 5),
    Duration timeout = const Duration(minutes: 5),
    bool throwOnFailed = true,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (stopwatch.elapsed <= timeout) {
      final result = await common.commonQueryAsyncTaskResult(
        CommonQueryAsyncTaskResultParams(taskId: taskId),
      );
      final status = result.data?.taskStatus ?? result.taskStatus;
      if (status == 2) return result;
      if (status == 3) {
        if (throwOnFailed) {
          throw StateError('AILabTools task failed: $taskId');
        }
        return result;
      }
      await Future<void>.delayed(interval);
    }
    throw TimeoutException('AILabTools task timed out: $taskId', timeout);
  }

  /// Releases the internally created HTTP client.
  ///
  /// An injected [http.Client] remains owned by the caller and is not closed.
  void close() => _requester.close();
}
