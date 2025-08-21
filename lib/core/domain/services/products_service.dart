import 'package:ez_sauda/core/domain/models/enums/sort_order.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/domain/models/result.dart';

abstract class ProductsService {
  Future<Result<List<Product>>> getProducts(
    int page,
    SortOrder? sortOrder,
    int? categoryId,
  );
}
