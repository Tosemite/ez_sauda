import 'package:dio/dio.dart';
import 'package:ez_sauda/core/data/dtos/brand_dto.dart';
import 'package:ez_sauda/core/data/dtos/pageable_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'brands_source.g.dart';

@injectable
@RestApi()
abstract class BrandsSource {
  @factoryMethod
  factory BrandsSource(Dio dio) = _BrandsSource;

  @GET('/brands')
  Future<PageableDto<BrandDto>> getBrands({
    @Query('page') required int page,
    @Query('pageSize') required int pageSize,
  });
}
