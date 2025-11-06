import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/cart/domain/services/cart_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateCartItemUseCase implements UseCase<UpdateCartItemParams, void> {
  const UpdateCartItemUseCase(this.cartService);

  final CartService cartService;

  @override
  Future<Result<void>> call(UpdateCartItemParams params) {
    return cartService.updateCartItem(
      params.productId,
      params.distributorId,
      params.quantity,
    );
  }
}

class UpdateCartItemParams {
  final String productId;
  final String distributorId;
  final int quantity;

  UpdateCartItemParams({
    required this.productId,
    required this.distributorId,
    required this.quantity,
  });
}
