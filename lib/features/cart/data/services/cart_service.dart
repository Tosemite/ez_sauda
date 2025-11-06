import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ez_sauda/core/config/locale_config.dart';
import 'package:ez_sauda/core/data/mappers/dio_exception_mapper_x.dart';
import 'package:ez_sauda/core/domain/models/failure.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/features/cart/data/dtos/save_cart_product_request.dart';
import 'package:ez_sauda/features/cart/data/sources/cart_source.dart';
import 'package:ez_sauda/features/cart/domain/models/cart.dart';
import 'package:ez_sauda/features/cart/domain/services/cart_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CartService)
class CartServiceImpl implements CartService {
  CartServiceImpl({
    required this.cartSource,
    required this.localeConfig,
  });

  final CartSource cartSource;
  final LocaleConfig localeConfig;

  @override
  Future<Result<void>> addCartItem(
    String productId,
    String distributorId,
  ) async {
    try {
      return SuccessResult(
        await cartSource.addCartItem(
          SaveCartProductRequest(
            productId,
            distributorId,
            1,
          ),
        ),
      );
    } on DioException catch (e) {
      return ErrorResult(e.toFailure(localeConfig.locale.wrongLoginOrPassword));
    } on Exception catch (e) {
      return ErrorResult(OtherFailure(message: e.toString()));
    }
  }

  @override
  Future<Result<void>> clearCart() async {
    try {
      return SuccessResult(await cartSource.deleteCart());
    } on DioException catch (e) {
      return ErrorResult(e.toFailure(localeConfig.locale.wrongLoginOrPassword));
    } on Exception catch (e) {
      return ErrorResult(OtherFailure(message: e.toString()));
    }
  }

  @override
  Future<Result<void>> clearCartItem(
    String productId,
    String distributorId,
  ) async {
    try {
      return SuccessResult(
        await cartSource.deleteCartItem(
          productId,
          distributorId,
        ),
      );
    } on DioException catch (e) {
      return ErrorResult(e.toFailure(localeConfig.locale.wrongLoginOrPassword));
    } on Exception catch (e) {
      return ErrorResult(OtherFailure(message: e.toString()));
    }
  }

  @override
  Future<Result<Cart>> getCart() async {
    try {
      final result = await cartSource.getCart();
      return SuccessResult(
        Cart(
          products: result.items,
          totalCost: result.totalPrice,
        ),
      );
    } on DioException catch (e) {
      return ErrorResult(e.toFailure(localeConfig.locale.wrongLoginOrPassword));
    } on Exception catch (e) {
      return ErrorResult(OtherFailure(message: e.toString()));
    }
  }

  @override
  Future<Result<void>> updateCartItem(
    String productId,
    String distributorId,
    int quantity,
  ) async {
    try {
      return SuccessResult(
        await cartSource.updateCartItem(
          SaveCartProductRequest(
            productId,
            distributorId,
            quantity,
          ),
        ),
      );
    } on DioException catch (e) {
      return ErrorResult(e.toFailure(localeConfig.locale.wrongLoginOrPassword));
    } on Exception catch (e) {
      return ErrorResult(OtherFailure(message: e.toString()));
    }
  }
}
