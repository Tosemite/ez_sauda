import 'package:dio/dio.dart';
import 'package:ez_sauda/core/config/repository_config.dart';
import 'package:injectable/injectable.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

@module
abstract class DioConfig {
  @injectable
  Dio getDio(
    Talker talker,
    RepositoryConfig repositoryConfig,
    @Named('auth-interceptor') Interceptor authInterceptor,
  ) =>
      Dio(
        BaseOptions(
          baseUrl: repositoryConfig.baseUrl,
        ),
      )..interceptors.addAll(
          [
            authInterceptor,
            TalkerDioLogger(
              talker: talker,
              settings: const TalkerDioLoggerSettings(
                printRequestData: true,
                printResponseData: true,
                printRequestHeaders: true,
                printResponseHeaders: true,
                printResponseMessage: true,
              ),
            ),
          ],
        );
}
