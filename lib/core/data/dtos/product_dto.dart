import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.g.dart';

@JsonSerializable()
class ProductDto implements Product {
  @override
  final String id;
  @override
  final int? categoryId;
  @override
  final String name;
  @override
  final List<String> imageUrls;
  @override
  double get unitPrice => 100; //TODO fetch from backend
  @override
  final int packageVolume;
  @override
  final String unitOfMeasurement;
  @override
  final String ingredients;
  @override
  final String description;
  @override
  final String barcode;

  ProductDto({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.imageUrls,
    required this.packageVolume,
    required this.unitOfMeasurement,
    required this.ingredients,
    required this.description,
    required this.barcode,
  });

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);
}
