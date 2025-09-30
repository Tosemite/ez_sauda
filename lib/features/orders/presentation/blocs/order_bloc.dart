import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/fetch_distributors_use_case.dart';
import 'package:ez_sauda/features/orders/domain/models/product_order.dart';
import 'package:ez_sauda/features/orders/domain/use_cases/fetch_orders_use_case.dart';
import 'package:ez_sauda/features/orders/presentation/blocs/order_event.dart';
import 'package:ez_sauda/features/orders/presentation/blocs/order_state.dart';
import 'package:ez_sauda/features/product/domain/models/distributor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc(
    this._fetchOrdersUseCase,
    this._fetchDistributorsUseCase,
  ) : super(OrderState()) {
    on<OrderFetched>(_fetchOrder);
    on<OrderDistributorsFetched>(_fetchDistributors);
    on<OrderFiltersChanged>(_changeFilters);
    add(OrderFetched());
    add(OrderDistributorsFetched());
  }

  final FetchOrdersUseCase _fetchOrdersUseCase;
  final FetchDistributorsUseCase _fetchDistributorsUseCase;

  Future<void> _fetchOrder(
    OrderFetched event,
    Emitter<OrderState> emit,
  ) async {
    final result = await _fetchOrdersUseCase();
    switch (result) {
      case SuccessResult<List<ProductOrder>>(value: final orders):
        emit(
          state.copyWith(
            orders: orders,
          ),
        );
      case ErrorResult<List<ProductOrder>>(failure: final _):
      //TODO add failure handling
    }
  }

  Future<void> _fetchDistributors(
    OrderDistributorsFetched event,
    Emitter<OrderState> emit,
  ) async {
    final result = await _fetchDistributorsUseCase(0);
    switch (result) {
      case SuccessResult<List<Distributor>>(value: final distributors):
        emit(
          state.copyWith(
            distributors: distributors,
          ),
        );
      case ErrorResult<List<Distributor>>(failure: final _):
      //TODO add failure handling
    }
  }

  Future<void> _changeFilters(
    OrderFiltersChanged event,
    Emitter<OrderState> emit,
  ) async {
    emit(
      state.copyWith(
        filter: event.filters,
        orders: null,
      ),
    );
    add(OrderFetched());
  }
}
