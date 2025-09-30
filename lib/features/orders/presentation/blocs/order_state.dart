import 'package:ez_sauda/features/orders/domain/models/enums/order_sort.dart';
import 'package:ez_sauda/features/orders/domain/models/enums/order_status.dart';
import 'package:ez_sauda/features/orders/domain/models/product_order.dart';
import 'package:ez_sauda/features/product/domain/models/distributor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_state.freezed.dart';

@freezed
class OrderState with _$OrderState {
  const OrderState({
    this.orders,
    this.filter = const OrderFilter(),
    this.distributors,
  });

  @override
  final List<ProductOrder>? orders;
  @override
  final OrderFilter filter;
  @override
  final List<Distributor>? distributors;
}

@freezed
class OrderFilter with _$OrderFilter {
  const OrderFilter({
    this.statuses = const [],
    this.orderFilterDate,
    this.distributors = const [],
    this.priceFrom,
    this.priceTo,
    this.sort = OrderSort.date,
  });

  @override
  final List<OrderStatus> statuses;
  @override
  final OrderFilterDate? orderFilterDate;
  @override
  final List<Distributor> distributors;
  @override
  final int? priceFrom;
  @override
  final int? priceTo;
  @override
  final OrderSort sort;
}

@freezed
sealed class OrderFilterDate with _$OrderFilterDate {
  const factory OrderFilterDate.day() = OrderFilterDateDay;

  const factory OrderFilterDate.week() = OrderFilterDateWeek;

  const factory OrderFilterDate.month() = OrderFilterDateMonth;

  const factory OrderFilterDate.custom({
    required DateTime startDate,
    required DateTime endDate,
  }) = OrderFilterDateCustom;
}
