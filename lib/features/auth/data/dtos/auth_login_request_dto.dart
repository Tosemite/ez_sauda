import 'package:json_annotation/json_annotation.dart';

part 'auth_login_request_dto.g.dart';

@JsonSerializable()
class AuthLoginRequestDto {
  const AuthLoginRequestDto(
      this.username,
      this.password,
      );

  final String username;
  final String password;

  factory AuthLoginRequestDto.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthLoginRequestDtoToJson(this);
}
