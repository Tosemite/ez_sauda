import 'package:ez_sauda/core/domain/usecases/observable.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/auth/domain/services/auth_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class ObserveIsAuthenticatedUseCase implements Observable<NoParams, bool> {
  const ObserveIsAuthenticatedUseCase(this.authService);

  final AuthService authService;

  @override
  Stream<bool> observe([NoParams params = const NoParams()]) {
    return authService.isLoggedInStream;
  }
}