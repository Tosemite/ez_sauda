import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_distributor_state.freezed.dart';

@freezed
class ProductDistributorState with _$ProductDistributorState {
  const ProductDistributorState({
    required this.productId,
    this.distributors = const ValueInitial(),
  });

  @override
  final String productId;
  @override
  final ValueState<List<ProductDistributor>> distributors;
}
