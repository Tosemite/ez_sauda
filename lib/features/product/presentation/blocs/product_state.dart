import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:ez_sauda/features/product/domain/models/fetch_reviews_response.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const ProductState({
    required this.product,
    this.reviews = const ValueInitial(),
    this.distributors = const ValueInitial(),
    this.similarProducts = const ValueInitial(),
  });

  @override
  final Product product;
  @override
  final ValueState<FetchReviewsResponse> reviews;
  @override
  final ValueState<List<ProductDistributor>> distributors;
  @override
  final ValueState<List<Product>> similarProducts;
}