import 'package:ez_sauda/features/cart/data/dtos/create_order_request_items.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request.g.dart';

@JsonSerializable(createFactory: false)
class CreateOrderRequest {
  const CreateOrderRequest({
    required this.distributorId,
    required this.items,
    required this.deliveryDate,
    required this.createdAt,
  });

  final String distributorId;
  final List<CreateOrderRequestItems> items;
  final DateTime deliveryDate;
  final DateTime createdAt;

  Map<String, dynamic> toJson() => _$CreateOrderRequestToJson(this);
}
