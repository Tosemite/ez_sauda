import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/fetch_products_use_case.dart';
import 'package:ez_sauda/features/search/presentation/blocs/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchCubit(@factoryParam SearchParams? params, this.fetchProductsUseCase)
      : super(
          SearchState(
            category: params?.category,
            brand: params?.brand,
            query: params?.barcode,
          ),
        ) {
    fetchProducts();
  }

  final FetchProductsUseCase fetchProductsUseCase;

  Future<void> fetchProducts() async {
    final result = await fetchProductsUseCase(
      FetchProductsParams(
        page: 0,
        categoryId: state.category?.id,
      ),
    );
    switch (result) {
      case SuccessResult<List<Product>>(value: final products):
        emit(
          state.copyWith(
            products: products,
          ),
        );
      case ErrorResult<List<Product>>(failure: final failure):
      //TODO
    }
  }

  Future<void> queryChanged(String query) async{
    emit(
      state.copyWith(
        query: query,
      ),
    );
  }
}
