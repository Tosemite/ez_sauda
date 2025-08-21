// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthLoginRequestDto _$AuthLoginRequestDtoFromJson(Map<String, dynamic> json) =>
    AuthLoginRequestDto(
      json['username'] as String,
      json['password'] as String,
    );

Map<String, dynamic> _$AuthLoginRequestDtoToJson(
        AuthLoginRequestDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
