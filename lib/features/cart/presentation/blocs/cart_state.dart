import 'package:ez_sauda/core/presentation/bloc/base_state.dart';
import 'package:ez_sauda/features/cart/domain/models/cart_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const CartState({
    required this.productList,
    this.totalItemCount = 0,
    this.totalPrice = 0,
    this.productMap = const {},
    this.selectedDistributorIds = const {},
    this.orderCreateState = const BaseInitial(),
    this.cartFetchState = const BaseInitial(),
  });

  @override
  final int totalItemCount;
  @override
  final double totalPrice;
  @override
  final Map<String, CartProduct> productMap;
  @override
  final List<CartProduct> productList;
  @override
  final Set<String> selectedDistributorIds;
  @override
  final BaseState orderCreateState;
  @override
  final BaseState cartFetchState;
}
