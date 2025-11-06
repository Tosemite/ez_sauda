import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/cart/domain/services/cart_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddCartItemUseCase implements UseCase<AddCartItemParams, void> {
  const AddCartItemUseCase(this.cartService);

  final CartService cartService;

  @override
  Future<Result<void>> call(AddCartItemParams params) {
    return cartService.addCartItem(
      params.productId,
      params.distributorId,
    );
  }
}

class AddCartItemParams {
  final String productId;
  final String distributorId;

  AddCartItemParams({
    required this.productId,
    required this.distributorId,
  });
}
