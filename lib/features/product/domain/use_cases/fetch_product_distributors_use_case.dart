import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/product/domain/models/distributor.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchProductDistributorsUseCase
    implements UseCase<String, List<ProductDistributor>> {
  const FetchProductDistributorsUseCase();

  @override
  Future<Result<List<ProductDistributor>>> call(String productId) async {
    await Future.delayed(Duration(seconds: 1));
    //TODO remove mocks
    return SuccessResult(
      [
        ProductDistributor(
          id: '1',
          distributor: Distributor(
            id: '1',
            rating: 4.5,
            totalReviews: 20,
            name: 'Поставщик',
          ),
          deliveryDate: DateTime.now().add(Duration(days: 2)),
          cost: 100,
        ),
        ProductDistributor(
          id: '1',
          distributor: Distributor(
            id: '1',
            rating: 4.5,
            totalReviews: 20,
            name: 'Поставщик',
          ),
          deliveryDate: DateTime.now().add(Duration(days: 2)),
          cost: 100,
        ),
        ProductDistributor(
          id: '1',
          distributor: Distributor(
            id: '1',
            rating: 4.5,
            totalReviews: 20,
            name: 'Поставщик',
          ),
          deliveryDate: DateTime.now().add(Duration(days: 2)),
          cost: 100,
        ),
        ProductDistributor(
          id: '1',
          distributor: Distributor(
            id: '1',
            rating: 4.5,
            totalReviews: 20,
            name: 'Поставщик',
          ),
          deliveryDate: DateTime.now().add(Duration(days: 2)),
          cost: 100,
        ),
        ProductDistributor(
          id: '1',
          distributor: Distributor(
            id: '1',
            rating: 4.5,
            totalReviews: 20,
            name: 'Поставщик',
          ),
          deliveryDate: DateTime.now().add(Duration(days: 2)),
          cost: 100,
        ),
      ],
    );
  }
}
