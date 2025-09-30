import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/orders/domain/models/enums/order_status.dart';
import 'package:ez_sauda/features/orders/domain/models/product_order.dart';
import 'package:ez_sauda/features/product/domain/models/distributor.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchOrdersUseCase implements UseCase<NoParams, List<ProductOrder>> {
  const FetchOrdersUseCase();

  @override
  Future<Result<List<ProductOrder>>> call([
    NoParams params = const NoParams(),
  ]) async {
    await Future.delayed(Duration(seconds: 1));
    return SuccessResult(
      [
        ProductOrder(
          id: '1',
          orderNum: 49873498,
          totalAmount: 45000,
          status: OrderStatus.created,
          deliveryDate: DateTime(2025, 8, 25, 16, 35),
          createdDate: DateTime(2025, 6, 12, 16, 35),
          distributor: Distributor(
            id: '1',
            rating: 1,
            totalReviews: 5,
            name: 'ABC Group',
          ),
        ),
        ProductOrder(
          id: '1',
          orderNum: 49873056,
          totalAmount: 12000,
          status: OrderStatus.delivered,
          deliveryDate: DateTime(2025, 8, 25),
          createdDate: DateTime(2025, 6, 12),
          distributor: Distributor(
            id: '1',
            rating: 1,
            totalReviews: 5,
            name: 'ABC Group',
          ),
        ),
      ],
    );
  }
}
