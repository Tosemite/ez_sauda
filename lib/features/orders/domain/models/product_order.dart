import 'package:ez_sauda/features/orders/domain/models/enums/order_status.dart';
import 'package:ez_sauda/features/product/domain/models/distributor.dart';

class ProductOrder {
  final String id;
  final int orderNum;
  final double totalAmount;
  final OrderStatus status;
  final DateTime createdDate;
  final DateTime deliveryDate;
  final Distributor distributor;

  ProductOrder({
    required this.id,
    required this.orderNum,
    required this.totalAmount,
    required this.status,
    required this.createdDate,
    required this.deliveryDate,
    required this.distributor,
  });
}
