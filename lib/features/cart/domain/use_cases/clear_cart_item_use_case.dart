import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/cart/domain/services/cart_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearCartItemUseCase implements UseCase<ClearCartItemParams, void> {
  const ClearCartItemUseCase(this.cartService);

  final CartService cartService;

  @override
  Future<Result<void>> call(ClearCartItemParams params) {
    return cartService.clearCartItem(
      params.productId,
      params.distributorId,
    );
  }
}

class ClearCartItemParams {
  final String productId;
  final String distributorId;

  ClearCartItemParams({
    required this.productId,
    required this.distributorId,
  });
}
