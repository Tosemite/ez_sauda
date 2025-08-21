abstract interface class Failure {
  String get message;
}

class ClientFailure implements Failure {
  final int code;
  @override
  final String message;

  ClientFailure({
    required this.message,
    this.code = 400,
  });
}

class ServerFailure implements Failure {
  final int code;
  @override
  final String message;

  ServerFailure({
    required this.message,
    this.code = 500,
  });
}

class ConnectionTimeoutFailure implements Failure {
  @override
  final String message;

  ConnectionTimeoutFailure({
    required this.message,
  });
}

class OtherFailure implements Failure {
  final int? code;
  final dynamic error;

  @override
  final String message;

  OtherFailure({
    required this.message,
    this.code,
    this.error,
  });
}
