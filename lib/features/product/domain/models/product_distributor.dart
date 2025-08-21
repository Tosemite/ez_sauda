import 'package:ez_sauda/features/product/domain/models/distributor.dart';

class ProductDistributor {
  final String id;
  final Distributor distributor;
  final DateTime deliveryDate;
  final int cost;

  ProductDistributor({
    required this.id,
    required this.distributor,
    required this.deliveryDate,
    required this.cost,
  });
}
