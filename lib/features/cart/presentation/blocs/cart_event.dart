import 'package:ez_sauda/core/domain/models/product.dart';

sealed class CartEvent {
  const CartEvent();
}

class CartProductAdded extends CartEvent {
  const CartProductAdded({
    required this.product,
  });

  final Product product;
}

class CartProductAmountChanged extends CartEvent {
  const CartProductAmountChanged({
    required this.product,
    required this.count,
  });

  final Product product;
  final int count;
}
