import 'package:ez_sauda/core/domain/models/brand.dart';
import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const SearchState({
    this.total,
    this.products,
    this.category,
    this.brand,
    this.query,
  });

  @override
  final Category? category;
  @override
  final Brand? brand;
  @override
  final String? query;
  @override
  final int? total;
  @override
  final List<Product>? products;
}

class SearchParams {
  final Category? category;
  final Brand? brand;
  final String? barcode;

  SearchParams(this.category, this.brand, this.barcode);
}
