import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;
  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);

  factory ServerFailure.fromDiorError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure('Connection timeout');
      case DioExceptionType.sendTimeout:
        return const ServerFailure('Send timeout');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure('Receive timeout');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response?.statusCode ?? 0,
          dioException.response?.data,
        );
      case DioExceptionType.cancel:
        return const ServerFailure('Request cancelled');
      case DioExceptionType.connectionError:
        return const ServerFailure('Connection error');
      case DioExceptionType.unknown:
      default:
        return const ServerFailure('Unknown error occurred');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure('Client error: $statusCode');
    } else if (statusCode == 404) {
      return const ServerFailure('Resource not found');
    } else if (statusCode == 500) {
      return const ServerFailure('Internal server error');
    } else {
      return ServerFailure('Server error: $statusCode');
    }
  }
}
