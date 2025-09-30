import 'package:ez_sauda/features/orders/presentation/blocs/order_state.dart';

sealed class OrderEvent {
  const OrderEvent();
}

class OrderFetched extends OrderEvent {
  const OrderFetched();
}

class OrderDistributorsFetched extends OrderEvent {
  const OrderDistributorsFetched();
}

class OrderFiltersChanged extends OrderEvent {
  final OrderFilter filters;

  const OrderFiltersChanged({
    required this.filters,
  });
}
