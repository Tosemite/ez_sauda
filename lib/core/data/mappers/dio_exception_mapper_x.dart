import 'package:dio/dio.dart';
import 'package:ez_sauda/core/domain/models/failure.dart';

extension DioExceptionMapperX on DioException {
  Failure toFailure(String defaultMessage) {
    try {
      switch (type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.connectionError:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return ConnectionTimeoutFailure(
            message: message ?? response?.data,
          );
        case DioExceptionType.badCertificate:
        case DioExceptionType.badResponse:
          final statusCode = response?.statusCode;
          switch (statusCode) {
            case null:
              return OtherFailure(message: defaultMessage);
            case >= 400 && < 500:
              return ClientFailure(
                code: statusCode,
                message: response?.data?['error'] ?? defaultMessage,
              );
            default:
              return ServerFailure(
                code: statusCode,
                message: response?.data?['error'] ?? defaultMessage,
              );
          }
        default:
          return OtherFailure(
            message: defaultMessage,
            code: response?.statusCode,
            error: error,
          );
      }
    } catch (_) {
      return OtherFailure(
        code: response?.statusCode,
        message: defaultMessage,
      );
    }
  }
}
