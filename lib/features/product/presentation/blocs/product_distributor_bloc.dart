import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:ez_sauda/features/product/domain/use_cases/fetch_product_distributors_use_case.dart';
import 'package:ez_sauda/features/product/presentation/blocs/product_distributor_event.dart';
import 'package:ez_sauda/features/product/presentation/blocs/product_distributor_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductDistributorBloc
    extends Bloc<ProductDistributorEvent, ProductDistributorState> {
  ProductDistributorBloc({
    @factoryParam required String productId,
    required this.fetchProductDistributorsUseCase,
  }) : super(ProductDistributorState(productId: productId)) {
    on<ProductDistributorFetched>(_fetchDistributors);
  }

  final FetchProductDistributorsUseCase fetchProductDistributorsUseCase;

  Future<void> _fetchDistributors(
    ProductDistributorFetched event,
    Emitter<ProductDistributorState> emit,
  ) async {
    emit(state.copyWith(distributors: ValueInProgress()));
    final result = await fetchProductDistributorsUseCase(state.productId);
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
}
