import 'package:ez_sauda/core/domain/models/failure.dart';
import 'package:ez_sauda/core/presentation/bloc/base_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@Freezed()
class LoginState with _$LoginState {
  const LoginState({
    this.failure,
    this.login = '',
    this.password = '',
    this.submitState = const BaseInitial(),
  });

  @override
  final Failure? failure;
  @override
  final String login;
  @override
  final String password;
  @override
  final BaseState submitState;
}
