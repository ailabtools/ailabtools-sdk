import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

import 'error.dart';
import 'file_input.dart';
import 'models.dart';

final class Requester {
  Requester({
    required String apiKey,
    required String baseUrl,
    required Duration timeout,
    http.Client? httpClient,
  })  : _apiKey = apiKey,
        _baseUri = Uri.parse(baseUrl.endsWith('/') ? baseUrl : '$baseUrl/'),
        _timeout = timeout,
        _client = httpClient ?? http.Client(),
        _ownsClient = httpClient == null;

  final String _apiKey;
  final Uri _baseUri;
  final Duration _timeout;
  final http.Client _client;
  final bool _ownsClient;

  Future<AILabResponse<T>> request<T>({
    required String method,
    required String path,
    required T? Function(Object? value) parseData,
    Map<String, Object?> query = const {},
    Map<String, Object?>? body,
    bool multipart = false,
  }) async {
    final cleanQuery = <String, String>{
      for (final entry in query.entries)
        if (entry.value != null) entry.key: _stringify(entry.value),
    };
    final relativePath = path.startsWith('/') ? path.substring(1) : path;
    var uri = _baseUri.resolve(relativePath);
    if (cleanQuery.isNotEmpty) {
      uri = uri.replace(queryParameters: cleanQuery);
    }

    final http.BaseRequest request;
    if (multipart) {
      final multipartRequest = http.MultipartRequest(method, uri);
      for (final entry in (body ?? const <String, Object?>{}).entries) {
        final value = entry.value;
        if (value == null) continue;
        if (value is AILabFile) {
          multipartRequest.files.add(
            http.MultipartFile.fromBytes(
              entry.key,
              value.bytes,
              filename: value.filename,
              contentType: value.contentType == null
                  ? null
                  : MediaType.parse(value.contentType!),
            ),
          );
        } else {
          multipartRequest.fields[entry.key] = _stringify(value);
        }
      }
      request = multipartRequest;
    } else {
      final standardRequest = http.Request(method, uri);
      if (body != null) {
        standardRequest.headers['content-type'] = 'application/json';
        standardRequest.body = jsonEncode(body);
      }
      request = standardRequest;
    }
    request.headers['ailabapi-api-key'] = _apiKey;

    final streamed = await _client.send(request).timeout(_timeout);
    final response = await http.Response.fromStream(streamed).timeout(_timeout);
    final JsonMap json;
    try {
      final decoded = jsonDecode(response.body);
      if (decoded is! JsonMap) {
        throw const FormatException('Expected a JSON object');
      }
      json = decoded;
    } on FormatException {
      throw AILabApiException(
        response.body.isEmpty ? 'Empty response' : 'Invalid JSON response',
        statusCode: response.statusCode,
        raw: response.body,
      );
    }

    final errorCode = (json['error_code'] as num?)?.toInt() ?? 0;
    if (response.statusCode != 200 || errorCode != 0) {
      final detail = json['error_detail'] is JsonMap
          ? ErrorDetail.fromJson(json['error_detail'] as JsonMap)
          : null;
      throw AILabApiException(
        detail?.message ??
            json['error_msg']?.toString() ??
            'AILabTools API Error',
        statusCode: response.statusCode,
        requestId: json['request_id']?.toString(),
        logId: json['log_id']?.toString(),
        detail: detail,
        raw: json,
      );
    }
    return AILabResponse<T>.fromJson(json, parseData);
  }

  void close() {
    if (_ownsClient) _client.close();
  }

  static String _stringify(Object? value) {
    if (value is Iterable) return value.join(',');
    return value.toString();
  }
}
