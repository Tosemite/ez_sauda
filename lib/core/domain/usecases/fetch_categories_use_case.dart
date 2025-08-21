import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/services/categories_service.dart';
import 'package:ez_sauda/core/domain/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchCategoriesUseCase implements UseCase<int, List<Category>> {
  const FetchCategoriesUseCase(this.categoriesService);

  final CategoriesService categoriesService;

  @override
  Future<Result<List<Category>>> call(int page) {
    return categoriesService.getCategories(page);
  }
}
