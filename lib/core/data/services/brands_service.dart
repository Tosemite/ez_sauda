import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ez_sauda/core/config/locale_config.dart';
import 'package:ez_sauda/core/data/mappers/dio_exception_mapper_x.dart';
import 'package:ez_sauda/core/data/sources/brands_source.dart';
import 'package:ez_sauda/core/domain/models/brand.dart';
import 'package:ez_sauda/core/domain/models/failure.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/services/brands_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BrandsService)
class BrandsServiceImpl implements BrandsService {
  BrandsServiceImpl({
    required this.brandsSource,
    required this.localeConfig,
  });

  final BrandsSource brandsSource;
  final LocaleConfig localeConfig;

  @override
  Future<Result<List<Brand>>> getBrands(int page) async {
    try {
      final result = await brandsSource.getBrands(
        page: page,
        pageSize: 10,
      );
      return SuccessResult(result.items);
    } on DioException catch (e) {
      return ErrorResult(e.toFailure(localeConfig.locale.errorOccurred));
    } on Exception catch (e) {
      return ErrorResult(OtherFailure(message: e.toString()));
    }
  }
}
