import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

enum OrderStatus {
  unspecified('ORDER_STATUS_UNSPECIFIED'),
  created('ORDER_STATUS_CREATED'),
  awaitingPay('ORDER_STATUS_AWAITING_PAY'),
  paid('ORDER_STATUS_PAID'),
  packing('ORDER_STATUS_PACKING'),
  shipped('ORDER_STATUS_SHIPPED'),
  transit('ORDER_STATUS_IN_TRANSIT'),
  delivered('ORDER_STATUS_DELIVERED'),
  cancelled('ORDER_STATUS_CANCELLED'),
  returned('ORDER_STATUS_RETURNED');

  final String code;

  const OrderStatus(this.code);

  OrderStatus fromCode(String code) {
    return OrderStatus.values.firstWhere(
      (type) => type.code == code,
      orElse: () => OrderStatus.unspecified,
    );
  }

  Color getStatusColor(BuildContext context) {
    return switch (this) {
      OrderStatus.delivered || OrderStatus.returned => Color(0xFF52C41A),
      OrderStatus.cancelled => context.colors.error,
      _ => Color(0xFFFAAD14),
    };
  }

  String getStatusText(BuildContext context) {
    return switch (this) {
      OrderStatus.created ||
      OrderStatus.awaitingPay ||
      OrderStatus.paid ||
      OrderStatus.packing =>
      context.l10n.underReview,
      OrderStatus.shipped || OrderStatus.transit => context.l10n.inDelivery,
      OrderStatus.delivered => context.l10n.delivered,
      OrderStatus.cancelled => context.l10n.cancelled,
      OrderStatus.returned => context.l10n.returned,
      _ => '',
    };
  }
}
