import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@Freezed()
class HomeState with _$HomeState {
  const HomeState({
    this.categories,
    this.recommendedProducts,
  });

  @override
  final List<Category>? categories;
  @override
  final List<Product>? recommendedProducts;
}
