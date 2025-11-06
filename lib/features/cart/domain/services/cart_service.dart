import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/features/cart/domain/models/cart.dart';
import 'package:ez_sauda/features/cart/domain/models/cart_product.dart';

abstract interface class CartService {
  Future<Result<Cart>> getCart();

  Future<Result<void>> addCartItem(String productId, String distributorId);

  Future<Result<void>> updateCartItem(
    String productId,
    String distributorId,
    int quantity,
  );

  Future<Result<void>> clearCart();

  Future<Result<void>> clearCartItem(String productId, String distributorId);

  Future<Result<void>> createOrder(
    String distributorId,
    List<CartProduct> products,
  );
}
