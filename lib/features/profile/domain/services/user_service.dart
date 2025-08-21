import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/features/profile/domain/models/user.dart';

abstract interface class UserService {
  Future<Result<User>> getCurrentUser();
}