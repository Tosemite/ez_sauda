import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/fetch_categories_use_case.dart';
import 'package:ez_sauda/core/domain/usecases/fetch_products_use_case.dart';
import 'package:ez_sauda/features/home/presentation/blocs/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required this.fetchCategoriesUseCase,
    required this.fetchProductsUseCase,
  }) : super(HomeState()) {
    fetchCategories();
    fetchRecommendedProducts();
  }

  final FetchCategoriesUseCase fetchCategoriesUseCase;
  final FetchProductsUseCase fetchProductsUseCase;

  Future<void> fetchCategories([int? page]) async {
    final result = await fetchCategoriesUseCase(page ?? 0);
    switch (result) {
      case SuccessResult<List<Category>>(value: final categories):
        emit(
          state.copyWith(
            categories: categories,
          ),
        );
      case ErrorResult<List<Category>>(failure: final failure):
      //TODO
    }
  }

  Future<void> fetchRecommendedProducts() async {
    final result = await fetchProductsUseCase(FetchProductsParams(page: 0));
    switch (result) {
      case SuccessResult<List<Product>>(value: final products):
        emit(
          state.copyWith(
            recommendedProducts: products,
          ),
        );
      case ErrorResult<List<Product>>(failure: final failure):
      //TODO
    }
  }
}
