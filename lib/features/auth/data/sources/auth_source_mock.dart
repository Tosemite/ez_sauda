import 'package:ez_sauda/features/auth/data/dtos/auth_login_request_dto.dart';
import 'package:ez_sauda/features/auth/data/dtos/auth_login_response_dto.dart';
import 'package:ez_sauda/features/auth/data/sources/auth_source.dart';
import 'package:retrofit/retrofit.dart';


// @injectable
class AuthSourceMock implements AuthSource {
  @override
  Future<AuthLoginResponseDto> login(@Body() AuthLoginRequestDto body) async{
    await Future.delayed(Duration(milliseconds: 400));
    return AuthLoginResponseDto('token');
  }
}
