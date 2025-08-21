import 'package:ez_sauda/core/domain/models/enums/sort_order.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/services/products_service.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchProductsUseCase
    implements UseCase<FetchProductsParams, List<Product>> {
  const FetchProductsUseCase(this.productsService);

  final ProductsService productsService;

  @override
  Future<Result<List<Product>>> call(FetchProductsParams params) {
    return productsService.getProducts(
      params.page,
      params.sortOrder,
      params.categoryId,
    );
  }
}

class FetchProductsParams {
  final int page;
  final SortOrder? sortOrder;
  final int? categoryId;

  FetchProductsParams({
    required this.page,
    this.sortOrder,
    this.categoryId,
  });
}
