import 'package:dio/dio.dart';
import 'package:ez_sauda/features/profile/data/dtos/user_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'user_source.g.dart';

@injectable
@RestApi()
abstract class UserSource {
  @factoryMethod
  factory UserSource(Dio dio) =
  _UserSource;

  @GET('/user/me')
  Future<UserDto> getCurrentUser();
}
