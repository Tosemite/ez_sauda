import 'dart:async';

import 'package:collection/collection.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/presentation/bloc/base_state.dart';
import 'package:ez_sauda/features/auth/domain/use_cases/observe_is_authenticated_use_case.dart';
import 'package:ez_sauda/features/cart/domain/models/cart.dart';
import 'package:ez_sauda/features/cart/domain/models/cart_product.dart';
import 'package:ez_sauda/features/cart/domain/use_cases/add_cart_item_use_case.dart';
import 'package:ez_sauda/features/cart/domain/use_cases/clear_cart_item_use_case.dart';
import 'package:ez_sauda/features/cart/domain/use_cases/clear_cart_use_case.dart';
import 'package:ez_sauda/features/cart/domain/use_cases/get_cart_use_case.dart';
import 'package:ez_sauda/features/cart/domain/use_cases/update_cart_item_use_case.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_event.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

EventTransformer<Event> debounceSequential<Event>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).asyncExpand(mapper);
}

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(
    this._addCartItemUseCase,
    this._clearCartItemUseCase,
    this._clearCartUseCase,
    this._getCartUseCase,
    this._updateCartItemUseCase,
    this._observeIsAuthenticatedUseCase,
  ) : super(CartState(productList: [])) {
    on<CartProductAmountChanged>(
      _incrementProduct,
      transformer: debounceSequential(Duration(milliseconds: 300)),
    );
    on<CartInitialized>(_initialize);
    on<CartProductAdded>(_addProduct);
    on<CartDistributorProductsSelected>(_selectDistributorProducts);
    on<CartAllProductsSelected>(_selectAllProducts);
    on<CartDistributorProductsUnselected>(_unselectDistributorProducts);
    on<CartAllProductsUnselected>(_unselectAllProducts);
    on<CartSelectedProductsCleared>(_clearSelectedProducts);
    on<CartOrderConfirmed>(_confirmOrder);
    add(CartInitialized());
  }

  final AddCartItemUseCase _addCartItemUseCase;
  final ClearCartItemUseCase _clearCartItemUseCase;
  final ClearCartUseCase _clearCartUseCase;
  final GetCartUseCase _getCartUseCase;
  final UpdateCartItemUseCase _updateCartItemUseCase;
  final ObserveIsAuthenticatedUseCase _observeIsAuthenticatedUseCase;

  Future? _fetchFuture;

  Future<void> _initialize(
    CartInitialized event,
    Emitter<CartState> emit,
  ) async {
    return emit.onEach(
      _observeIsAuthenticatedUseCase.observe(),
      onData: (isAuthenticated) async {
        if (isAuthenticated) _fetchFuture = _fetchCart(emit);
        await _fetchFuture;
        _fetchFuture = null;
      },
    );
  }

  Future<void> _fetchCart(
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(cartFetchState: BaseInProgress()));
    final result = await _getCartUseCase();
    switch (result) {
      case SuccessResult<Cart>(value: final value):
        emit(
          state.copyWith(
            totalItemCount: value.products.fold(
              0,
              (val, product) => val + product.quantity,
            ),
            productList: value.products,
            productMap: value.products.groupFoldBy(
              (product) => product.productId,
              (_, p) => p,
            ),
            totalPrice: value.totalCost,
            cartFetchState: BaseSuccess(),
          ),
        );
      case ErrorResult<Cart>(failure: final failure):
        unawaited(_clearCartUseCase());
        emit(state.copyWith(cartFetchState: BaseFailure(failure)));
    }
  }

  Future<void> _incrementProduct(
    CartProductAmountChanged event,
    Emitter<CartState> emit,
  ) async {
    if (_fetchFuture != null) {
      await _fetchFuture;
    }
    final productList = List<CartProduct>.of(state.productList);
    final productMap = Map.of(state.productMap);
    if (event.count == 0) {
      final removedProduct = productMap.remove(event.productId);
      if (removedProduct == null) {
        return;
      }
      final result = await _clearCartItemUseCase(
        ClearCartItemParams(
          productId: event.productId,
          distributorId: removedProduct.distributorId,
        ),
      );
      switch (result) {
        case SuccessResult<void>():
          emit(
            state.copyWith(
              totalItemCount: state.totalItemCount - removedProduct.quantity,
              productList:
                  _sortByDistributorId(productList..remove(removedProduct)),
              productMap: productMap,
              totalPrice: state.totalPrice - removedProduct.totalPrice,
              selectedDistributorIds: {},
            ),
          );
        case ErrorResult<void>():
        // TODO: Handle this case.
      }
    } else {
      final existingProduct = productMap[event.productId];
      if (existingProduct == null) {
        return;
      }
      final result = await _updateCartItemUseCase(
        UpdateCartItemParams(
          productId: event.productId,
          distributorId: existingProduct.distributorId,
          quantity: event.count,
        ),
      );
      switch (result) {
        case SuccessResult<void>():
          final newProduct = CartProduct(
            productId: existingProduct.productId,
            distributorId: existingProduct.distributorId,
            distributorLogo: existingProduct.distributorLogo,
            distributorName: existingProduct.distributorName,
            name: existingProduct.name,
            imageUrl: existingProduct.imageUrl,
            description: existingProduct.description,
            unitPrice: existingProduct.unitPrice,
            totalPrice: existingProduct.unitPrice * event.count,
            quantity: event.count,
          );
          productMap[event.productId] = newProduct;
          emit(
            state.copyWith(
              totalItemCount: state.totalItemCount -
                  existingProduct.quantity +
                  newProduct.quantity,
              productList: _sortByDistributorId(
                productList
                  ..remove(existingProduct)
                  ..add(newProduct),
              ),
              productMap: productMap,
              totalPrice: state.totalPrice -
                  existingProduct.totalPrice +
                  newProduct.totalPrice,
            ),
          );
        case ErrorResult<void>():
        // TODO: Handle this case.
      }
    }
  }

  Future<void> _addProduct(
    CartProductAdded event,
    Emitter<CartState> emit,
  ) async {
    final result = await _addCartItemUseCase(
      AddCartItemParams(
        productId: event.product.id,
        distributorId: event.distributor.distributorId,
      ),
    );
    switch (result) {
      case SuccessResult<void>():
        final productList = List<CartProduct>.of(state.productList);
        final cartProduct = CartProduct(
          productId: event.product.id,
          distributorId: event.distributor.distributorId,
          distributorLogo: event.distributor.logoUrl,
          distributorName: event.distributor.distributorName,
          name: event.product.name,
          imageUrl: event.product.imageUrls.first,
          description: event.product.description,
          unitPrice: event.distributor.priceWithoutVat,
          totalPrice: event.distributor.priceWithoutVat,
          quantity: 1,
        );
        final productMap = Map.of(state.productMap);
        final oldProduct = productMap[cartProduct.productId];
        if (oldProduct != null) {
          productList.remove(oldProduct);
          emit(
            state.copyWith(
              totalItemCount: state.totalItemCount - oldProduct.quantity,
              totalPrice: state.totalPrice + oldProduct.totalPrice,
            ),
          );
        }
        productMap[cartProduct.productId] = cartProduct;
        emit(
          state.copyWith(
            totalItemCount: state.totalItemCount + 1,
            productList: _sortByDistributorId(productList..add(cartProduct)),
            productMap: productMap,
            totalPrice: state.totalPrice + cartProduct.totalPrice,
            selectedDistributorIds: {},
          ),
        );
      case ErrorResult<void>():
      //TODO
    }
  }

  Future<void> _selectDistributorProducts(
    CartDistributorProductsSelected event,
    Emitter<CartState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedDistributorIds: Set.of(state.selectedDistributorIds)
          ..add(event.distributorId),
      ),
    );
  }

  Future<void> _selectAllProducts(
    CartAllProductsSelected event,
    Emitter<CartState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedDistributorIds: Set.of(
          state.productList.map((e) => e.distributorId),
        ),
      ),
    );
  }

  Future<void> _unselectDistributorProducts(
    CartDistributorProductsUnselected event,
    Emitter<CartState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedDistributorIds: Set.of(state.selectedDistributorIds)
          ..remove(event.distributorId),
      ),
    );
  }

  Future<void> _unselectAllProducts(
    CartAllProductsUnselected event,
    Emitter<CartState> emit,
  ) async {
    emit(
      state.copyWith(
        selectedDistributorIds: {},
      ),
    );
  }

  Future<void> _clearSelectedProducts(
    CartSelectedProductsCleared event,
    Emitter<CartState> emit,
  ) async {
    final productListOnDelete = state.productList.where(
      (e) => state.selectedDistributorIds.contains(e.distributorId),
    );
    if (productListOnDelete.length == state.productList.length) {
      unawaited(_clearCartUseCase());
    } else {
      for (var product in productListOnDelete) {
        unawaited(
          _clearCartItemUseCase(
            ClearCartItemParams(
              productId: product.productId,
              distributorId: product.distributorId,
            ),
          ),
        );
      }
    }
    final newProductList = state.productList;
    newProductList.removeWhere(
      (e) => state.selectedDistributorIds.contains(e.distributorId),
    );

    emit(
      state.copyWith(
        totalItemCount: newProductList.fold(0, (prev, e) => prev + e.quantity),
        totalPrice: newProductList.fold(0, (prev, e) => prev + e.totalPrice),
        productList: _sortByDistributorId(newProductList),
        productMap: state.productMap
          ..removeWhere(
            (k, e) => state.selectedDistributorIds.contains(
              e.distributorId,
            ),
          ),
        selectedDistributorIds: {},
      ),
    );
  }

  List<CartProduct> _sortByDistributorId(List<CartProduct> products) {
    return products.sorted(
      (p1, p2) => p1.distributorId.compareTo(
        p2.distributorId,
      ),
    );
  }

  Future<void> _confirmOrder(
    CartOrderConfirmed event,
    Emitter<CartState> emit,
  ) async {
    emit(
      state.copyWith(
        orderCreateState: BaseInProgress(),
      ),
    );
    await Future.delayed(Duration(milliseconds: 400));
    emit(
      state.copyWith(
        orderCreateState: BaseSuccess(),
        totalItemCount: 0,
        totalPrice: 0,
        productMap: {},
        productList: [],
        selectedDistributorIds: {},
      ),
    );
  }
}
