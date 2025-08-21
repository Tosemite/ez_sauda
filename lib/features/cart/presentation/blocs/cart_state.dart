import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const CartState({
    this.totalItemCount = 0,
    this.productCounter = const {},
  });

  @override
  final int totalItemCount;
  @override
  final Map<String, ProductCounter> productCounter;
}

@freezed
class ProductCounter with _$ProductCounter {
  const ProductCounter({
    required this.count,
    required this.product,
  });

  @override
  final int count;
  @override
  final Product product;
}