import 'package:ez_sauda/features/cart/domain/models/cart_product.dart';

class Cart {
  final List<CartProduct> products;
  final double totalCost;

  Cart({
    required this.products,
    required this.totalCost,
  });
}
