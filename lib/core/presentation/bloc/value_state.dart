
import 'package:ez_sauda/core/domain/models/failure.dart';

sealed class ValueState<T> {
  const ValueState();
}

class ValueInitial<T> extends ValueState<T> {
  const ValueInitial();
}

class ValueSuccess<T> extends ValueState<T> {
  const ValueSuccess(this.value);

  final T value;
}

class ValueInProgress<T> extends ValueState<T> {
  const ValueInProgress();
}

class ValueFailure<T> extends ValueState<T> {
  const ValueFailure(this.failure);

  final Failure failure;
}