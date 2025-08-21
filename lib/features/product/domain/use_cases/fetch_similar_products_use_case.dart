import 'package:ez_sauda/core/domain/models/enums/sort_order.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/services/products_service.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchSimilarProductsUseCase implements UseCase<String, List<Product>> {
  const FetchSimilarProductsUseCase(this.productsService);

  final ProductsService productsService;

  @override
  Future<Result<List<Product>>> call(String productId) async {
    return productsService.getProducts(0, SortOrder.ascending, null);
  }
}
