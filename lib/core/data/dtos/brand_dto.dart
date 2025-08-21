import 'package:ez_sauda/core/domain/models/brand.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_dto.g.dart';

@JsonSerializable()
class BrandDto implements Brand {
  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String logoUrl;

  BrandDto({
    required this.id,
    required this.name,
    required this.description,
    required this.logoUrl,
  });

  factory BrandDto.fromJson(Map<String, dynamic> json) =>
      _$BrandDtoFromJson(json);
}
