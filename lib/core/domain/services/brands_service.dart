import 'package:ez_sauda/core/domain/models/brand.dart';
import 'package:ez_sauda/core/domain/models/result.dart';

abstract class BrandsService {
  Future<Result<List<Brand>>> getBrands(int page);
}
