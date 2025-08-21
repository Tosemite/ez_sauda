
import 'package:ez_sauda/core/domain/models/failure.dart';

sealed class BaseState {
  const BaseState();
}

class BaseInitial extends BaseState {
  const BaseInitial();
}

class BaseSuccess extends BaseState {
  const BaseSuccess();
}

class BaseInProgress extends BaseState {
  const BaseInProgress();
}

class BaseFailure extends BaseState {
  const BaseFailure(this.failure);

  final Failure failure;
}