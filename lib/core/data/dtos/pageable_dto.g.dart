// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageableDto<T> _$PageableDtoFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PageableDto<T>(
      total: (json['total'] as num).toInt(),
      items: (json['items'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$PageableDtoToJson<T>(
  PageableDto<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items.map(toJsonT).toList(),
    };
