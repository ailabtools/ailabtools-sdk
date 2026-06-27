typedef JsonMap = Map<String, dynamic>;

final class ErrorDetail {
  const ErrorDetail({
    this.statusCode,
    this.code,
    this.codeMessage,
    this.message,
  });

  factory ErrorDetail.fromJson(JsonMap json) => ErrorDetail(
        statusCode: (json['status_code'] as num?)?.toInt(),
        code: json['code']?.toString(),
        codeMessage: json['code_message']?.toString(),
        message: json['message']?.toString(),
      );

  final int? statusCode;
  final String? code;
  final String? codeMessage;
  final String? message;
}

final class AILabResponse<T> {
  const AILabResponse({
    this.requestId,
    this.logId,
    this.errorCode,
    this.errorCodeString,
    this.errorMessage,
    this.errorDetail,
    this.data,
    this.image,
    this.ratio,
    this.taskType,
    this.taskId,
    this.taskStatus,
    required this.raw,
  });

  factory AILabResponse.fromJson(
    JsonMap json,
    T? Function(Object? value) parseData,
  ) =>
      AILabResponse<T>(
        requestId: json['request_id']?.toString(),
        logId: json['log_id']?.toString(),
        errorCode: (json['error_code'] as num?)?.toInt(),
        errorCodeString: json['error_code_str']?.toString(),
        errorMessage: json['error_msg']?.toString(),
        errorDetail: json['error_detail'] is JsonMap
            ? ErrorDetail.fromJson(json['error_detail'] as JsonMap)
            : null,
        data: parseData(json['data']),
        image: json['image']?.toString(),
        ratio: json['ratio'],
        taskType: json['task_type']?.toString(),
        taskId: json['task_id']?.toString(),
        taskStatus: (json['task_status'] as num?)?.toInt(),
        raw: json,
      );

  final String? requestId;
  final String? logId;
  final int? errorCode;
  final String? errorCodeString;
  final String? errorMessage;
  final ErrorDetail? errorDetail;
  final T? data;
  final String? image;
  final Object? ratio;
  final String? taskType;
  final String? taskId;
  final int? taskStatus;
  final JsonMap raw;
}
