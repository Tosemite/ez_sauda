import 'package:ez_sauda/features/product/domain/models/distributor.dart';

class CartProduct {
  final String productId;
  final Distributor distributor;
  final String name;
  final String description;
  final double unitPrice;
  final double totalPrice;
  final int quantity;

  CartProduct({
    required this.productId,
    required this.distributor,
    required this.name,
    required this.description,
    required this.unitPrice,
    required this.totalPrice,
    required this.quantity,
  });
}
