import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/cart/domain/models/cart_product.dart';
import 'package:ez_sauda/features/cart/domain/services/cart_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateOrderUseCase implements UseCase<CreateOrderParams, void> {
  const CreateOrderUseCase(this.cartService);

  final CartService cartService;

  @override
  Future<Result<void>> call(CreateOrderParams params) {
    return cartService.createOrder(
      params.distributorId,
      params.products,
    );
  }
}

class CreateOrderParams {
  final String distributorId;
  final List<CartProduct> products;

  CreateOrderParams({
    required this.distributorId,
    required this.products,
  });
}
