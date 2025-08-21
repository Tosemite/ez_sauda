import 'package:dio/dio.dart';
import 'package:ez_sauda/features/auth/data/dtos/auth_login_request_dto.dart';
import 'package:ez_sauda/features/auth/data/dtos/auth_login_response_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_source.g.dart';

@injectable
@RestApi()
abstract class AuthSource {
  @factoryMethod
  factory AuthSource(Dio dio) =
  _AuthSource;

  @POST('/auth/login')
  Future<AuthLoginResponseDto> login(@Body() AuthLoginRequestDto body);
}
