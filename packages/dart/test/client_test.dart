import 'dart:convert';
import 'dart:typed_data';

import 'package:ailabtools/ailabtools.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

void main() {
  test('background alias uploads a file and maps response fields', () async {
    final transport = RecordingClient((request) {
      expect(request.method, 'POST');
      expect(
          request.url.path, '/api/cutout/general/universal-background-removal');
      expect(request.headers['ailabapi-api-key'], 'test-key');

      final multipart = request as http.MultipartRequest;
      expect(multipart.fields['return_form'], 'whiteBK');
      expect(multipart.files.single.field, 'image');
      expect(multipart.files.single.filename, 'photo.jpg');

      return successResponse({
        'error_code': 0,
        'request_id': 'request-1',
        'data': {'image_url': 'https://example.com/result.png'},
      });
    });
    final client = AILabClient(apiKey: 'test-key', httpClient: transport);

    final result = await client.background.remove(
      CutoutUniversalBackgroundRemovalParams(
        image: AILabFile.fromBytes(
          Uint8List.fromList([0xff, 0xd8, 0xff]),
          filename: 'photo.jpg',
          contentType: 'image/jpeg',
        ),
        returnForm: 'whiteBK',
      ),
    );

    expect(result.requestId, 'request-1');
    expect(result.data?.imageUrl, 'https://example.com/result.png');
    client.close();
    expect(transport.closed, isFalse);
  });

  test('image upscale maps camelCase parameters to API field names', () async {
    final transport = RecordingClient((request) {
      final multipart = request as http.MultipartRequest;
      expect(multipart.fields['upscale_factor'], '4');
      expect(multipart.fields['output_format'], 'jpg');
      expect(multipart.fields, isNot(contains('upscaleFactor')));
      return successResponse({
        'error_code': 0,
        'data': {'url': 'https://example.com/upscaled.jpg'},
      });
    });
    final client = AILabClient(apiKey: 'test-key', httpClient: transport);

    final result = await client.image.upscale(
      ImageLosslessEnlargementParams(
        image: AILabFile.fromBytes(
          Uint8List(1),
          filename: 'photo.jpg',
        ),
        upscaleFactor: 4,
        outputFormat: 'jpg',
      ),
    );

    expect(result.data?.url, 'https://example.com/upscaled.jpg');
  });

  test('waitForTask polls until the task succeeds', () async {
    var calls = 0;
    final transport = RecordingClient((request) {
      calls++;
      expect(request.url.queryParameters['task_id'], 'task-1');
      return successResponse({
        'error_code': 0,
        'data': {'task_status': calls == 1 ? 1 : 2},
      });
    });
    final client = AILabClient(apiKey: 'test-key', httpClient: transport);

    final result = await client.waitForTask(
      'task-1',
      interval: Duration.zero,
      timeout: const Duration(seconds: 1),
    );

    expect(result.data?.taskStatus, 2);
    expect(calls, 2);
  });

  test('API errors expose request and log identifiers', () async {
    final transport = RecordingClient((request) {
      return http.StreamedResponse(
        Stream.value(
          utf8.encode(jsonEncode({
            'error_code': 1001,
            'error_msg': 'Invalid image',
            'request_id': 'request-2',
            'log_id': 'log-2',
            'error_detail': {'message': 'Unsupported image format'},
          })),
        ),
        400,
      );
    });
    final client = AILabClient(apiKey: 'test-key', httpClient: transport);

    expect(
      () => client.common.commonQueryCredits(
        const CommonQueryCreditsParams(),
      ),
      throwsA(
        isA<AILabApiException>()
            .having((error) => error.statusCode, 'statusCode', 400)
            .having((error) => error.requestId, 'requestId', 'request-2')
            .having((error) => error.logId, 'logId', 'log-2'),
      ),
    );
  });

  test('typed numeric and string arrays are parsed without runtime casts',
      () async {
    var call = 0;
    final transport = RecordingClient((request) {
      call++;
      if (call == 1) {
        return successResponse({
          'error_code': 0,
          'data': {
            'pupils': [1, 2.5],
            'gender_list': [0, 1],
          },
        });
      }
      return successResponse({
        'error_code': 0,
        'data': {
          'binary_data_base64': ['first', 'second'],
        },
      });
    });
    final client = AILabClient(apiKey: 'test-key', httpClient: transport);
    final image = AILabFile.fromBytes(Uint8List(1), filename: 'image.jpg');

    final analysis = await client.portrait.portraitFaceAnalyzerAdvanced(
      PortraitFaceAnalyzerAdvancedParams(image: image),
    );
    final removal = await client.image.imageRemoveObjectsAdvanced(
      ImageRemoveObjectsAdvancedParams(image: image, mask: image),
    );

    expect(analysis.data?.pupils, <double>[1, 2.5]);
    expect(analysis.data?.genderList, <int>[0, 1]);
    expect(removal.data?.binaryDataBase64, <String>['first', 'second']);
  });
}

http.StreamedResponse successResponse(Map<String, Object?> body) =>
    http.StreamedResponse(
      Stream.value(utf8.encode(jsonEncode(body))),
      200,
      headers: {'content-type': 'application/json'},
    );

final class RecordingClient extends http.BaseClient {
  RecordingClient(this.handler);

  final http.StreamedResponse Function(http.BaseRequest request) handler;
  bool closed = false;

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async =>
      handler(request);

  @override
  void close() {
    closed = true;
    super.close();
  }
}
