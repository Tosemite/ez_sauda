// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandDto _$BrandDtoFromJson(Map<String, dynamic> json) => BrandDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      logoUrl: json['logoUrl'] as String,
    );

Map<String, dynamic> _$BrandDtoToJson(BrandDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'logoUrl': instance.logoUrl,
    };
