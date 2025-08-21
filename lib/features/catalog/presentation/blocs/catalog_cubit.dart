import 'package:ez_sauda/core/domain/models/brand.dart';
import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/fetch_brands_use_case.dart';
import 'package:ez_sauda/core/domain/usecases/fetch_categories_use_case.dart';
import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:ez_sauda/features/catalog/presentation/blocs/catalog_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CatalogCubit extends Cubit<CatalogState> {
  CatalogCubit({
    required this.fetchCategoriesUseCase,
    required this.fetchBrandsUseCase,
  }) : super(CatalogState()) {
    fetchCategories();
    fetchBrands();
  }

  final FetchCategoriesUseCase fetchCategoriesUseCase;
  final FetchBrandsUseCase fetchBrandsUseCase;

  Future<void> fetchCategories([int? page]) async {
    final result = await fetchCategoriesUseCase(page ?? 0);
    switch (result) {
      case SuccessResult<List<Category>>(value: final categories):
        emit(
          state.copyWith(
            categories: ValueSuccess(categories),
          ),
        );
      case ErrorResult<List<Category>>(failure: final failure):
        emit(
          state.copyWith(
            categories: ValueFailure(failure),
          ),
        );
    }
  }

  Future<void> fetchBrands([int? page]) async {
    final result = await fetchBrandsUseCase(page ?? 0);
    switch (result) {
      case SuccessResult<List<Brand>>(value: final brands):
        emit(
          state.copyWith(
            brands: ValueSuccess(brands),
          ),
        );
      case ErrorResult<List<Brand>>(failure: final failure):
        emit(
          state.copyWith(
            brands: ValueFailure(failure),
          ),
        );
    }
  }
}
