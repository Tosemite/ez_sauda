import 'package:freezed_annotation/freezed_annotation.dart';

part 'pageable_dto.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class PageableDto<T> {
  final int total;
  final List<T> items;

  PageableDto({
    required this.total,
    required this.items,
  });

  factory PageableDto.fromJson(
    Map<String, dynamic> json,
    T Function(Object? object) fromJsonT,
  ) {
    return _$PageableDtoFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$PageableDtoToJson(this, toJsonT);
}
