import 'package:ez_sauda/core/domain/models/brand.dart';
import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'catalog_state.freezed.dart';

@Freezed()
class CatalogState with _$CatalogState {
  const CatalogState({
    this.categories = const ValueInitial(),
    this.brands = const ValueInitial(),
  });

  @override
  final ValueState<List<Category>> categories;
  @override
  final ValueState<List<Brand>> brands;
}
