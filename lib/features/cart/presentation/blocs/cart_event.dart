import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/features/product/domain/models/distributor.dart';

sealed class CartEvent {
  const CartEvent();
}

class CartProductAdded extends CartEvent {
  const CartProductAdded({
    required this.product,
    required this.distributor,
  });

  final Product product;
  final Distributor distributor;
}

class CartProductAmountChanged extends CartEvent {
  const CartProductAmountChanged({
    required this.productId,
    required this.count,
  });

  final String productId;
  final int count;
}

class CartDistributorProductsSelected extends CartEvent {
  final String distributorId;

  const CartDistributorProductsSelected(this.distributorId);
}

class CartDistributorProductsUnselected extends CartEvent {
  final String distributorId;

  const CartDistributorProductsUnselected(this.distributorId);
}

class CartAllProductsSelected extends CartEvent {
  const CartAllProductsSelected();
}

class CartAllProductsUnselected extends CartEvent {
  const CartAllProductsUnselected();
}

class CartSelectedProductsCleared extends CartEvent {
  const CartSelectedProductsCleared();
}

class CartOrderConfirmed extends CartEvent {
  const CartOrderConfirmed();
}