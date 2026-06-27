import 'models.dart';

final class AILabApiException implements Exception {
  const AILabApiException(
    this.message, {
    this.statusCode,
    this.requestId,
    this.logId,
    this.detail,
    this.raw,
  });

  final String message;
  final int? statusCode;
  final String? requestId;
  final String? logId;
  final ErrorDetail? detail;
  final Object? raw;

  @override
  String toString() {
    final status = statusCode == null ? '' : ' (status $statusCode)';
    return 'AILabTools API error: $message$status';
  }
}
