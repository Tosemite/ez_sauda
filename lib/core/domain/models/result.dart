
import 'package:ez_sauda/core/domain/models/failure.dart';

sealed class Result<Value> {}

class SuccessResult<Value> extends Result<Value> {
  final Value value;

  SuccessResult(this.value);
}

class ErrorResult<Value> extends Result<Value> {
  final Failure failure;

  ErrorResult(this.failure);
}

extension ResultX<Value> on Result<Value> {
  T map<T>({
    required T Function(Value) onSuccess,
    required T Function(Failure) onError,
  }) =>
      switch (this) {
        SuccessResult successResult => onSuccess(successResult.value),
        ErrorResult errorResult => onError(errorResult.failure),
      };
}
