

import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/auth/domain/services/auth_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase implements UseCase<NoParams, void> {
  const LogoutUseCase(this.authService);

  final AuthService authService;

  @override
  Future<Result<void>> call([NoParams params = const NoParams()]) {
    return authService.logout();
  }
}