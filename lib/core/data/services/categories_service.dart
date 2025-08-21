import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ez_sauda/core/config/locale_config.dart';
import 'package:ez_sauda/core/data/mappers/dio_exception_mapper_x.dart';
import 'package:ez_sauda/core/data/sources/categories_source.dart';
import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/domain/models/failure.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/services/categories_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CategoriesService)
class CategoriesServiceImpl implements CategoriesService {
  CategoriesServiceImpl({
    required this.categoriesSource,
    required this.localeConfig,
  });

  final CategoriesSource categoriesSource;
  final LocaleConfig localeConfig;

  @override
  Future<Result<List<Category>>> getCategories(int page) async {
    try {
      final result = await categoriesSource.getCategories(
        parentId: 1, //TODO
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
