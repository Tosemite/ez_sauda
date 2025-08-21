import 'package:dio/dio.dart';
import 'package:ez_sauda/core/data/dtos/product_dto.dart';
import 'package:ez_sauda/core/data/dtos/pageable_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'products_source.g.dart';

@injectable
@RestApi()
abstract class ProductsSource {
  @factoryMethod
  factory ProductsSource(Dio dio) = _ProductsSource;

  @GET('/products')
  Future<PageableDto<ProductDto>> getProducts({
    @Query('page') required int page,
    @Query('pageSize') required int pageSize,
    @Query('sortBy') String? sortBy,
    @Query('sortOrder') String? sortOrder,
    @Query('categoryId') int? categoryId,
  });
}
