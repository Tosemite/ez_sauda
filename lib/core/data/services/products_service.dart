import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ez_sauda/core/config/locale_config.dart';
import 'package:ez_sauda/core/data/mappers/dio_exception_mapper_x.dart';
import 'package:ez_sauda/core/data/sources/products_source.dart';
import 'package:ez_sauda/core/domain/models/enums/sort_order.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/domain/models/failure.dart';
import 'package:ez_sauda/core/domain/models/result.dart';
import 'package:ez_sauda/core/domain/services/products_service.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ProductsService)
class ProductsServiceImpl implements ProductsService {
  ProductsServiceImpl({
    required this.productsSource,
    required this.localeConfig,
  });

  final ProductsSource productsSource;
  final LocaleConfig localeConfig;

  @override
  Future<Result<List<Product>>> getProducts(
    int page,
    SortOrder? sortOrder,
    int? categoryId,
  ) async {
    try {
      final result = await productsSource.getProducts(
        page: page,
        pageSize: 10,
        sortOrder: sortOrder?.code,
        categoryId: categoryId,
      );
      return SuccessResult(result.items);
    } on DioException catch (e) {
      return ErrorResult(e.toFailure(localeConfig.locale.errorOccurred));
    } on Exception catch (e) {
      return ErrorResult(OtherFailure(message: e.toString()));
    }
  }

  @override
  Future<Result<List<ProductDistributor>>> getProductDistributors(
    int page,
      String productId,
  ) async {
    try {
      final result = await productsSource.getProductDistributors(
        page: page,
        pageSize: 10,
        productId: productId,
      );
      return SuccessResult(result.items);
    } on DioException catch (e) {
      return ErrorResult(e.toFailure(localeConfig.locale.errorOccurred));
    } on Exception catch (e) {
      return ErrorResult(OtherFailure(message: e.toString()));
    }
  }
}
