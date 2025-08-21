import 'package:ez_sauda/core/data/dtos/category_dto.dart';
import 'package:ez_sauda/core/data/dtos/pageable_dto.dart';
import 'package:ez_sauda/core/data/sources/categories_source.dart';

// @injectable
class CategoriesSourceMock implements CategoriesSource {
  @override
  Future<PageableDto<CategoryDto>> getCategories({
    required int page,
    required int pageSize,
    int? parentId,
  }) async {
    await Future.delayed(Duration(milliseconds: 600));
    return PageableDto(
      total: 10,
      items: [
        CategoryDto(
          id: 1,
          name: 'Категория',
        ),
        CategoryDto(
          id: 2,
          name: 'Категория',
        ),
        CategoryDto(
          id: 3,
          name: 'Категория',
        ),
        CategoryDto(
          id: 4,
          name: 'Категория',
        ),
        CategoryDto(
          id: 5,
          name: 'Категория',
        ),
        CategoryDto(
          id: 6,
          name: 'Категория',
        ),
        CategoryDto(
          id: 7,
          name: 'Категория',
        ),
        CategoryDto(
          id: 8,
          name: 'Категория',
        ),
        CategoryDto(
          id: 9,
          name: 'Категория',
        ),
        CategoryDto(
          id: 10,
          name: 'Категория',
        ),
      ],
    );
  }
}
