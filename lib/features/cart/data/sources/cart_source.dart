import 'package:dio/dio.dart';
import 'package:ez_sauda/features/cart/data/dtos/create_order_request.dart';
import 'package:ez_sauda/features/cart/data/dtos/get_cart_products_response.dart';
import 'package:ez_sauda/features/cart/data/dtos/save_cart_product_request.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'cart_source.g.dart';

@injectable
@RestApi()
abstract class CartSource {
  @factoryMethod
  factory CartSource(Dio dio) = _CartSource;

  @GET('/cart')
  Future<GetCartProductsResponse> getCart();

  @DELETE('/cart')
  Future<void> deleteCart();

  @POST('/cart/items')
  Future<void> addCartItem(@Body() SaveCartProductRequest body);

  @PATCH('/cart/items')
  Future<void> updateCartItem(@Body() SaveCartProductRequest body);

  @DELETE('/cart/items/{productId}/{distributorId}')
  Future<void> deleteCartItem(
    @Path() String productId,
    @Path() String distributorId,
  );

  @POST('/orders')
  Future<void> createOrder(@Body() CreateOrderRequest body);
}
