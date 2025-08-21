import 'package:json_annotation/json_annotation.dart';

part 'auth_login_response_dto.g.dart';

@JsonSerializable(createToJson: false)
class AuthLoginResponseDto {
  const AuthLoginResponseDto(this.accessToken);

  final String accessToken;

  factory AuthLoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginResponseDtoFromJson(json);
}
