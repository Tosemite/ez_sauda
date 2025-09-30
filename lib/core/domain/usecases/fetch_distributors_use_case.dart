import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:ez_sauda/features/product/domain/models/distributor.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchDistributorsUseCase implements UseCase<int, List<Distributor>> {
  const FetchDistributorsUseCase();

  @override
  Future<Result<List<Distributor>>> call(int page) async {
    await Future.delayed(Duration(seconds: 1));
    return SuccessResult([
      Distributor(
        id: 'id',
        rating: 5,
        totalReviews: 5,
        name: 'ABC Group',
      ),
      Distributor(
        id: 'id2',
        rating: 5,
        totalReviews: 5,
        name: 'ABC Group',
      ),
      Distributor(
        id: 'id3',
        rating: 5,
        totalReviews: 5,
        name: 'ABC Group',
      ),
    ]);
  }
}
