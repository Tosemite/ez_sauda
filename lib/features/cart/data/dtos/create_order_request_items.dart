import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request_items.g.dart';

@JsonSerializable(createFactory: false)
class CreateOrderRequestItems {
  const CreateOrderRequestItems({
    required this.productId,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
  });

  final String productId;
  final int quantity;
  final double unitPrice;
  final double totalPrice;

  Map<String, dynamic> toJson() => _$CreateOrderRequestItemsToJson(this);
}

