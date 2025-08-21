import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ez_sauda/core/config/locale_config.dart';
import 'package:ez_sauda/core/data/mappers/dio_exception_mapper_x.dart';
import 'package:ez_sauda/core/domain/models/failure.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/features/profile/data/sources/user_source.dart';
import 'package:ez_sauda/features/profile/domain/models/user.dart';
import 'package:ez_sauda/features/profile/domain/services/user_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: UserService)
class UserServiceImpl implements UserService {
  UserServiceImpl({
    required this.userSource,
    required this.localeConfig,
  });

  final UserSource userSource;
  final LocaleConfig localeConfig;

  @override
  Future<Result<User>> getCurrentUser() async{
    try {
      return SuccessResult(await userSource.getCurrentUser());
    } on DioException catch (e) {
      return ErrorResult(e.toFailure(localeConfig.locale.errorOccurred));
    } on Exception catch (e) {
      return ErrorResult(OtherFailure(message: e.toString()));
    }
  }
}
