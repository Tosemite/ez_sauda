import 'package:ez_sauda/features/cart/data/dtos/cart_product_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_cart_products_response.g.dart';

@JsonSerializable(createToJson: false)
class GetCartProductsResponse {
  const GetCartProductsResponse(
      this.items,
      this.totalPrice,
      );

  final List<CartProductDto> items;
  final double totalPrice;

  factory GetCartProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetCartProductsResponseFromJson(json);
}
