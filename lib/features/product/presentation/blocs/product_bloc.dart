import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/fetch_products_use_case.dart';
import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:ez_sauda/features/product/domain/models/fetch_reviews_response.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:ez_sauda/features/product/domain/use_cases/fetch_product_distributors_use_case.dart';
import 'package:ez_sauda/features/product/domain/use_cases/fetch_reviews_use_case.dart';
import 'package:ez_sauda/features/product/presentation/blocs/product_event.dart';
import 'package:ez_sauda/features/product/presentation/blocs/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc({
    @factoryParam required Product product,
    required this.fetchReviewsUseCase,
    required this.fetchProductDistributorsUseCase,
    required this.fetchProductsUseCase,
  }) : super(ProductState(product: product)) {
    on<ProductReviewsFetched>(_fetchReviews);
    on<ProductDistributorsFetched>(_fetchDistributors);
    on<ProductSimilarProductsFetched>(_fetchSimilarProducts);
    add(ProductReviewsFetched());
    add(ProductDistributorsFetched());
    add(ProductSimilarProductsFetched());
  }

  final FetchReviewsUseCase fetchReviewsUseCase;
  final FetchProductDistributorsUseCase fetchProductDistributorsUseCase;
  final FetchProductsUseCase fetchProductsUseCase;

  Future<void> _fetchReviews(
    ProductReviewsFetched event,
    Emitter<ProductState> emit,
  ) async {
    final result = await fetchReviewsUseCase(
      FetchReviewsParams(
        state.product.id,
        0,
      ),
    );
    switch (result) {
      case SuccessResult<FetchReviewsResponse>(value: final reviews):
        emit(
          state.copyWith(
            reviews: ValueSuccess(reviews),
          ),
        );
      case ErrorResult<FetchReviewsResponse>(failure: final failure):
        emit(
          state.copyWith(
            reviews: ValueFailure(failure),
          ),
        );
    }
  }

  Future<void> _fetchDistributors(
    ProductDistributorsFetched event,
    Emitter<ProductState> emit,
  ) async {
    final result = await fetchProductDistributorsUseCase(state.product.id);
    switch (result) {
      case SuccessResult<List<ProductDistributor>>(value: final reviews):
        emit(
          state.copyWith(
            distributors: ValueSuccess(reviews),
          ),
        );
      case ErrorResult<List<ProductDistributor>>(failure: final failure):
        emit(
          state.copyWith(
            distributors: ValueFailure(failure),
          ),
        );
    }
  }

  Future<void> _fetchSimilarProducts(
    ProductSimilarProductsFetched event,
    Emitter<ProductState> emit,
  ) async {
    final result = await fetchProductsUseCase(
      FetchProductsParams(
        page: 0,
        categoryId: state.product.categoryId,
      ),
    );
    switch (result) {
      case SuccessResult<List<Product>>(value: final products):
        emit(
          state.copyWith(
            similarProducts: ValueSuccess(
              products.where(
                (e) => e.id != state.product.id,
              ).toList(),
            ),
          ),
        );
      case ErrorResult<List<Product>>(failure: final failure):
        emit(
          state.copyWith(
            similarProducts: ValueFailure(failure),
          ),
        );
    }
  }
}
