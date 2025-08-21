import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ez_sauda/core/config/locale_config.dart';
import 'package:ez_sauda/core/data/mappers/dio_exception_mapper_x.dart';
import 'package:ez_sauda/core/domain/models/failure.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/features/auth/data/dtos/auth_login_request_dto.dart';
import 'package:ez_sauda/features/auth/data/sources/auth_source.dart';
import 'package:ez_sauda/features/auth/data/sources/token_source.dart';
import 'package:ez_sauda/features/auth/domain/services/auth_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AuthService)
class AuthServiceImpl implements AuthService {
  AuthServiceImpl({
    required this.authSource,
    required this.tokenSource,
    required this.localeConfig,
  });

  final StreamController<bool> _isLoggedInStreamController =
      StreamController.broadcast();

  final AuthSource authSource;
  final TokenSource tokenSource;
  final LocaleConfig localeConfig;

  @override
  Future<Result<void>> login(
    String username,
    String password,
  ) async {
    try {
      final result = await authSource.login(
        AuthLoginRequestDto(username, password),
      );
      tokenSource.setToken(result.accessToken);
      _isLoggedInStreamController.add(true);
      return SuccessResult(null);
    } on DioException catch (e) {
      return ErrorResult(e.toFailure(localeConfig.locale.wrongLoginOrPassword));
    } on Exception catch (e) {
      return ErrorResult(OtherFailure(message: e.toString()));
    }
  }

  @override
  Future<Result<void>> logout() async{
    try {
      tokenSource.clearToken();
      _isLoggedInStreamController.add(false);
      return SuccessResult(null);
    } on Exception catch (e) {
      return ErrorResult(OtherFailure(message: e.toString()));
    }
  }

  @override
  Stream<bool> get isLoggedInStream => _isLoggedInStreamController.stream;
}
