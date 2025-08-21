import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/auth/domain/services/auth_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUseCase implements UseCase<LoginParams, void> {
  const LoginUseCase(this.authService);

  final AuthService authService;

  @override
  Future<Result<void>> call(LoginParams params) {
    return authService.login(params.username, params.password);
  }
}

class LoginParams {
  final String username;
  final String password;

  const LoginParams(
    this.username,
    this.password,
  );
}
