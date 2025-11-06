import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_cart_product_request.g.dart';

@JsonSerializable(createFactory: false)
class SaveCartProductRequest {
  const SaveCartProductRequest(
    this.productId,
    this.distributorId,
    this.quantity,
  );

  final String productId;
  final String distributorId;
  final int quantity;

  Map<String, dynamic> toJson() => _$SaveCartProductRequestToJson(this);
}
