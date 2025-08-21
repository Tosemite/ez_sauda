import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/profile/domain/models/user.dart';
import 'package:ez_sauda/features/profile/domain/services/user_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchCurrentUserUseCase implements UseCase<NoParams, User> {
  const FetchCurrentUserUseCase(this.userService);

  final UserService userService;

  @override
  Future<Result<User>> call([NoParams _ = const NoParams()]) {
    return userService.getCurrentUser();
  }
}
