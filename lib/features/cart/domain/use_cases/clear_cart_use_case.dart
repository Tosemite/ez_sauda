import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/cart/domain/services/cart_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class ClearCartUseCase implements UseCase<NoParams, void> {
  const ClearCartUseCase(this.cartService);

  final CartService cartService;

  @override
  Future<Result<void>> call([NoParams params = const NoParams()]) {
    return cartService.clearCart();
  }
}
