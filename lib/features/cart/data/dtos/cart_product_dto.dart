import 'package:ez_sauda/features/cart/domain/models/cart_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product_dto.g.dart';

@JsonSerializable(createToJson: false)
class CartProductDto implements CartProduct {
  @override
  final String productId;
  @override
  final String distributorId;
  @override
  final String distributorName;
  @override
  final String distributorLogo;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String description;
  @override
  final double unitPrice;
  @override
  final double totalPrice;
  @override
  final int quantity;

  @override
  String get comment => '';

  CartProductDto({
    required this.productId,
    required this.distributorId,
    required this.distributorName,
    required this.distributorLogo,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.unitPrice,
    required this.totalPrice,
    required this.quantity,
  });

  factory CartProductDto.fromJson(Map<String, dynamic> json) =>
      _$CartProductDtoFromJson(json);
}
