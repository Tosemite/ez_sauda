import 'package:dio/dio.dart';
import 'package:ez_sauda/core/data/dtos/category_dto.dart';
import 'package:ez_sauda/core/data/dtos/pageable_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'categories_source.g.dart';

@injectable
@RestApi()
abstract class CategoriesSource {
  @factoryMethod
  factory CategoriesSource(Dio dio) = _CategoriesSource;

  @GET('/categories')
  Future<PageableDto<CategoryDto>> getCategories({
    @Query('page') required int page,
    @Query('pageSize') required int pageSize,
    @Query('parentId') int? parentId,
  });
}
