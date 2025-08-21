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
  CartBloc() : super(CartState()) {
    on<CartProductAmountChanged>(
      _incrementProduct,
      transformer: debounceSequential(Duration(milliseconds: 300)),
    );
    on<CartProductAdded>(_addProduct);
  }

  Future<void> _incrementProduct(
    CartProductAmountChanged event,
    Emitter<CartState> emit,
  ) async {
    final product = event.product;
    final productCounter = Map.of(state.productCounter);
    if (event.count == 0) {
      productCounter.remove(event.product.id);
    } else {
      final existingProduct = productCounter[product.id];
      if (existingProduct == null) {
        return;
      }
      productCounter[product.id] = existingProduct.copyWith(
        count: event.count,
      );
    }
    emit(
      state.copyWith(
        totalItemCount: _countTotalItems(productCounter),
        productCounter: productCounter,
      ),
    );
  }

  Future<void> _addProduct(
    CartProductAdded event,
    Emitter<CartState> emit,
  ) async {
    final product = event.product;
    final productCounter = Map.of(state.productCounter);
    productCounter[product.id] = ProductCounter(count: 1, product: product);
    emit(
      state.copyWith(
        totalItemCount: _countTotalItems(productCounter),
        productCounter: productCounter,
      ),
    );
  }

  int _countTotalItems(Map<String, ProductCounter> productCounters) {
    return productCounters.values.fold(0, (prev, e) => prev + e.count);
  }
}
