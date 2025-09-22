import 'package:collection/collection.dart';
import 'package:ez_sauda/features/cart/domain/models/cart_product.dart';
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
  CartBloc() : super(CartState(productList: [])) {
    on<CartProductAmountChanged>(
      _incrementProduct,
      transformer: debounceSequential(Duration(milliseconds: 300)),
    );
    on<CartProductAdded>(_addProduct);
    on<CartDistributorProductsSelected>(_selectDistributorProducts);
    on<CartAllProductsSelected>(_selectAllProducts);
    on<CartDistributorProductsUnselected>(_unselectDistributorProducts);
    on<CartAllProductsUnselected>(_unselectAllProducts);
    on<CartSelectedProductsCleared>(_clearSelectedProducts);
  }

  Future<void> _incrementProduct(
    CartProductAmountChanged event,
    Emitter<CartState> emit,
  ) async {
    final productMap = Map.of(state.productMap);
    if (event.count == 0) {
      final removedProduct = productMap.remove(event.productId);
      if (removedProduct == null) {
        return;
      }
      emit(
        state.copyWith(
          totalItemCount: state.totalItemCount - removedProduct.quantity,
          productList:
              sortByDistributorId(state.productList..remove(removedProduct)),
          productMap: productMap,
          totalPrice: state.totalPrice + removedProduct.totalPrice,
          selectedDistributorIds: {},
        ),
      );
    } else {
      final existingProduct = productMap[event.productId];
      if (existingProduct == null) {
        return;
      }
      final newProduct = CartProduct(
        productId: existingProduct.productId,
        distributor: existingProduct.distributor,
        name: existingProduct.name,
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
          productList: sortByDistributorId(
            state.productList
              ..remove(existingProduct)
              ..add(newProduct),
          ),
          productMap: productMap,
          totalPrice: state.totalPrice -
              existingProduct.totalPrice +
              newProduct.totalPrice,
        ),
      );
    }
  }

  Future<void> _addProduct(
    CartProductAdded event,
    Emitter<CartState> emit,
  ) async {
    final cartProduct = CartProduct(
      productId: event.product.id,
      distributor: event.distributor,
      name: event.product.name,
      description: event.product.description,
      unitPrice: event.product.unitPrice,
      totalPrice: event.product.unitPrice,
      quantity: 1,
    );
    final productMap = Map.of(state.productMap);
    final oldProduct = productMap[cartProduct.productId];
    if (oldProduct != null) {
      state.productList.remove(oldProduct);
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
        productList: sortByDistributorId(state.productList..add(cartProduct)),
        productMap: productMap,
        totalPrice: state.totalPrice + cartProduct.totalPrice,
        selectedDistributorIds: {},
      ),
    );
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
          state.productList.map((e) => e.distributor.id),
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
    final newProductList = state.productList;
    newProductList.removeWhere(
      (e) => state.selectedDistributorIds.contains(e.distributor.id),
    );
    emit(
      state.copyWith(
        totalItemCount: newProductList.fold(0, (prev, e) => prev + e.quantity),
        totalPrice: newProductList.fold(0, (prev, e) => prev + e.totalPrice),
        productList: sortByDistributorId(newProductList),
        productMap: state.productMap
          ..removeWhere(
            (k, e) => state.selectedDistributorIds.contains(
              e.distributor.id,
            ),
          ),
        selectedDistributorIds: {},
      ),
    );
  }

  List<CartProduct> sortByDistributorId(List<CartProduct> products) {
    return products.sorted(
      (p1, p2) => p1.distributor.id.compareTo(
        p2.distributor.id,
      ),
    );
  }
}
