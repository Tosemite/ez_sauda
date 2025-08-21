import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.g.dart';

@JsonSerializable()
class CategoryDto implements Category {
  @override
  final int id;
  @override
  final String name;

  CategoryDto({
    required this.id,
    required this.name,
  });

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}
