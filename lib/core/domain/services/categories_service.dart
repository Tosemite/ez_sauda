import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/domain/models/result.dart';

abstract interface class CategoriesService {
  Future<Result<List<Category>>> getCategories(int page);
}
