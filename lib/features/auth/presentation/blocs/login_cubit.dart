import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/presentation/bloc/base_state.dart';
import 'package:ez_sauda/features/auth/domain/use_cases/login_use_case.dart';
import 'package:ez_sauda/features/auth/presentation/blocs/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required this.loginUseCase,
  }) : super(LoginState());

  final LoginUseCase loginUseCase;

  Future<void> loginChanged(String login) async {
    emit(state.copyWith(login: login));
  }

  Future<void> passwordChanged(String password) async {
    emit(state.copyWith(password: password));
  }

  Future<void> submitForm() async {
    if (state.login.isEmpty || state.password.isEmpty) return;
    emit(state.copyWith(submitState: BaseInProgress()));
    final result = await loginUseCase(
      LoginParams(state.login, state.password),
    );
    switch (result) {
      case SuccessResult<void>():
        emit(
          state.copyWith(
            submitState: BaseSuccess(),
          ),
        );
      case ErrorResult<void>(failure: final failure):
        emit(
          state.copyWith(
            submitState: BaseFailure(failure),
          ),
        );
    }
  }
}
