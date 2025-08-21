import 'package:ez_sauda/core/domain/models/brand.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/services/brands_service.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchBrandsUseCase implements UseCase<int, List<Brand>> {
  const FetchBrandsUseCase(this.brandsService);

  final BrandsService brandsService;

  @override
  Future<Result<List<Brand>>> call(int page) {
    return brandsService.getBrands(page);
  }
}
