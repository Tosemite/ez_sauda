import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/cart/domain/models/cart.dart';
import 'package:ez_sauda/features/cart/domain/services/cart_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCartUseCase implements UseCase<NoParams, Cart> {
  const GetCartUseCase(this.cartService);

  final CartService cartService;

  @override
  Future<Result<Cart>> call([NoParams params = const NoParams()]) {
    return cartService.getCart();
  }
}
