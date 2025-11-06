import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/services/products_service.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchProductDistributorsUseCase
    implements UseCase<String, List<ProductDistributor>> {
  const FetchProductDistributorsUseCase(this.productsService);

  final ProductsService productsService;

  @override
  Future<Result<List<ProductDistributor>>> call(String productId) {
    return productsService.getProductDistributors(
      0, //TODO
      productId,
    );
  }
}
