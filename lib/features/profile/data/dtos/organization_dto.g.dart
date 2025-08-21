// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrganizationDto _$OrganizationDtoFromJson(Map<String, dynamic> json) =>
    OrganizationDto(
      id: json['id'] as String,
      name: json['name'] as String,
      bin: json['bin'] as String,
    );

Map<String, dynamic> _$OrganizationDtoToJson(OrganizationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bin': instance.bin,
      'name': instance.name,
    };
