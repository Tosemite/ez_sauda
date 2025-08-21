

import 'package:ez_sauda/core/domain/models/result.dart';

abstract interface class AuthService {
  Future<Result<void>> login(String username, String password);

  Future<Result<void>> logout();

  Stream<bool> get isLoggedInStream;
}
