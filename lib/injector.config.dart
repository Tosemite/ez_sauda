// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:convert' as _i229;

import 'package:dio/dio.dart' as _i361;
import 'package:ez_sauda/core/config/dio_config.dart' as _i412;
import 'package:ez_sauda/core/config/locale_config.dart' as _i816;
import 'package:ez_sauda/core/config/repository_config.dart' as _i470;
import 'package:ez_sauda/core/config/talker_config.dart' as _i137;
import 'package:ez_sauda/core/data/modules/decoder_module.dart' as _i695;
import 'package:ez_sauda/core/data/modules/encoding_module.dart' as _i374;
import 'package:ez_sauda/core/data/modules/http_module.dart' as _i635;
import 'package:ez_sauda/core/data/modules/preferences_module.dart' as _i555;
import 'package:ez_sauda/core/data/modules/secure_storage_module.dart' as _i640;
import 'package:ez_sauda/core/data/services/brands_service.dart' as _i934;
import 'package:ez_sauda/core/data/services/categories_service.dart' as _i755;
import 'package:ez_sauda/core/data/services/products_service.dart' as _i11;
import 'package:ez_sauda/core/data/sources/brands_source.dart' as _i1044;
import 'package:ez_sauda/core/data/sources/categories_source.dart' as _i1042;
import 'package:ez_sauda/core/data/sources/products_source.dart' as _i51;
import 'package:ez_sauda/core/domain/models/product.dart' as _i730;
import 'package:ez_sauda/core/domain/services/brands_service.dart' as _i372;
import 'package:ez_sauda/core/domain/services/categories_service.dart'
    as _i1028;
import 'package:ez_sauda/core/domain/services/products_service.dart' as _i912;
import 'package:ez_sauda/core/domain/usecases/fetch_brands_use_case.dart'
    as _i252;
import 'package:ez_sauda/core/domain/usecases/fetch_categories_use_case.dart'
    as _i23;
import 'package:ez_sauda/core/domain/usecases/fetch_products_use_case.dart'
    as _i776;
import 'package:ez_sauda/core/presentation/bloc/app_bloc.dart' as _i1054;
import 'package:ez_sauda/features/auth/config/interceptors/auth_interceptor.dart'
    as _i571;
import 'package:ez_sauda/features/auth/data/services/auth_service.dart'
    as _i1003;
import 'package:ez_sauda/features/auth/data/sources/auth_source.dart' as _i363;
import 'package:ez_sauda/features/auth/data/sources/token_source.dart' as _i279;
import 'package:ez_sauda/features/auth/domain/services/auth_service.dart'
    as _i281;
import 'package:ez_sauda/features/auth/domain/use_cases/login_use_case.dart'
    as _i919;
import 'package:ez_sauda/features/auth/domain/use_cases/logout_use_case.dart'
    as _i987;
import 'package:ez_sauda/features/auth/domain/use_cases/observe_is_authenticated_use_case.dart'
    as _i647;
import 'package:ez_sauda/features/auth/presentation/blocs/login_cubit.dart'
    as _i532;
import 'package:ez_sauda/features/cart/presentation/blocs/cart_bloc.dart'
    as _i46;
import 'package:ez_sauda/features/catalog/presentation/blocs/catalog_cubit.dart'
    as _i349;
import 'package:ez_sauda/features/home/presentation/blocs/home_cubit.dart'
    as _i446;
import 'package:ez_sauda/features/product/domain/use_cases/fetch_product_distributors_use_case.dart'
    as _i361;
import 'package:ez_sauda/features/product/domain/use_cases/fetch_reviews_use_case.dart'
    as _i581;
import 'package:ez_sauda/features/product/domain/use_cases/fetch_similar_products_use_case.dart'
    as _i316;
import 'package:ez_sauda/features/product/presentation/blocs/product_bloc.dart'
    as _i694;
import 'package:ez_sauda/features/profile/data/services/user_service.dart'
    as _i640;
import 'package:ez_sauda/features/profile/data/sources/user_source.dart'
    as _i57;
import 'package:ez_sauda/features/profile/domain/services/user_service.dart'
    as _i796;
import 'package:ez_sauda/features/profile/domain/use_cases/fetch_current_user_use_case.dart'
    as _i84;
import 'package:ez_sauda/features/profile/presentation/blocs/product_bloc.dart'
    as _i390;
import 'package:ez_sauda/features/search/presentation/blocs/search_cubit.dart'
    as _i280;
import 'package:ez_sauda/features/search/presentation/blocs/search_state.dart'
    as _i996;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:talker/talker.dart' as _i993;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

const String _dev = 'dev';
const String _prod = 'prod';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final talkerConfig = _$TalkerConfig();
    final encodingModule = _$EncodingModule();
    final preferencesModule = _$PreferencesModule();
    final decoderModule = _$DecoderModule();
    final secureStorageModule = _$SecureStorageModule();
    final httpModule = _$HttpModule();
    final dioConfig = _$DioConfig();
    gh.factory<_i816.LocaleConfig>(() => _i816.LocaleConfig());
    gh.factory<_i46.CartBloc>(() => _i46.CartBloc());
    gh.factory<_i581.FetchReviewsUseCase>(
        () => const _i581.FetchReviewsUseCase());
    gh.factory<_i361.FetchProductDistributorsUseCase>(
        () => const _i361.FetchProductDistributorsUseCase());
    gh.singleton<_i207.Talker>(() => talkerConfig.talker);
    gh.singleton<_i229.Encoding>(() => encodingModule.encoding);
    await gh.singletonAsync<_i460.SharedPreferences>(
      () => preferencesModule.preferences,
      preResolve: true,
    );
    gh.singleton<_i229.Converter<List<int>, String>>(
        () => decoderModule.decoder);
    await gh.singletonAsync<_i558.FlutterSecureStorage>(
      () => secureStorageModule.preferences,
      preResolve: true,
    );
    gh.singleton<_i519.Client>(
      () => httpModule.devClient,
      registerFor: {_dev},
    );
    gh.singleton<_i470.RepositoryConfig>(
      () => _i470.RepositoryConfigDev(),
      registerFor: {_dev},
    );
    gh.singleton<_i279.TokenSource>(() => _i279.TokenSourceImpl());
    gh.singleton<_i519.Client>(
      () => httpModule.prodClient,
      registerFor: {_prod},
    );
    gh.singleton<_i470.RepositoryConfig>(
      () => _i470.RepositoryConfigProd(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i361.Interceptor>(
      () => _i571.AuthInterceptor(gh<_i279.TokenSource>()),
      instanceName: 'auth-interceptor',
    );
    gh.factory<_i361.Dio>(() => dioConfig.getDio(
          gh<_i993.Talker>(),
          gh<_i470.RepositoryConfig>(),
          gh<_i361.Interceptor>(instanceName: 'auth-interceptor'),
        ));
    gh.factory<_i1042.CategoriesSource>(
        () => _i1042.CategoriesSource(gh<_i361.Dio>()));
    gh.factory<_i1044.BrandsSource>(() => _i1044.BrandsSource(gh<_i361.Dio>()));
    gh.factory<_i51.ProductsSource>(() => _i51.ProductsSource(gh<_i361.Dio>()));
    gh.factory<_i363.AuthSource>(() => _i363.AuthSource(gh<_i361.Dio>()));
    gh.factory<_i57.UserSource>(() => _i57.UserSource(gh<_i361.Dio>()));
    gh.singleton<_i912.ProductsService>(() => _i11.ProductsServiceImpl(
          productsSource: gh<_i51.ProductsSource>(),
          localeConfig: gh<_i816.LocaleConfig>(),
        ));
    gh.singleton<_i372.BrandsService>(() => _i934.BrandsServiceImpl(
          brandsSource: gh<_i1044.BrandsSource>(),
          localeConfig: gh<_i816.LocaleConfig>(),
        ));
    gh.factory<_i776.FetchProductsUseCase>(
        () => _i776.FetchProductsUseCase(gh<_i912.ProductsService>()));
    gh.factory<_i316.FetchSimilarProductsUseCase>(
        () => _i316.FetchSimilarProductsUseCase(gh<_i912.ProductsService>()));
    gh.singleton<_i281.AuthService>(() => _i1003.AuthServiceImpl(
          authSource: gh<_i363.AuthSource>(),
          tokenSource: gh<_i279.TokenSource>(),
          localeConfig: gh<_i816.LocaleConfig>(),
        ));
    gh.singleton<_i1028.CategoriesService>(() => _i755.CategoriesServiceImpl(
          categoriesSource: gh<_i1042.CategoriesSource>(),
          localeConfig: gh<_i816.LocaleConfig>(),
        ));
    gh.factoryParam<_i694.ProductBloc, _i730.Product, dynamic>((
      product,
      _,
    ) =>
        _i694.ProductBloc(
          product: product,
          fetchReviewsUseCase: gh<_i581.FetchReviewsUseCase>(),
          fetchProductDistributorsUseCase:
              gh<_i361.FetchProductDistributorsUseCase>(),
          fetchSimilarProductsUseCase: gh<_i316.FetchSimilarProductsUseCase>(),
        ));
    gh.factoryParam<_i280.SearchCubit, _i996.SearchParams?, dynamic>((
      params,
      _,
    ) =>
        _i280.SearchCubit(
          params,
          gh<_i776.FetchProductsUseCase>(),
        ));
    gh.singleton<_i796.UserService>(() => _i640.UserServiceImpl(
          userSource: gh<_i57.UserSource>(),
          localeConfig: gh<_i816.LocaleConfig>(),
        ));
    gh.factory<_i23.FetchCategoriesUseCase>(
        () => _i23.FetchCategoriesUseCase(gh<_i1028.CategoriesService>()));
    gh.factory<_i252.FetchBrandsUseCase>(
        () => _i252.FetchBrandsUseCase(gh<_i372.BrandsService>()));
    gh.factory<_i987.LogoutUseCase>(
        () => _i987.LogoutUseCase(gh<_i281.AuthService>()));
    gh.factory<_i647.ObserveIsAuthenticatedUseCase>(
        () => _i647.ObserveIsAuthenticatedUseCase(gh<_i281.AuthService>()));
    gh.factory<_i919.LoginUseCase>(
        () => _i919.LoginUseCase(gh<_i281.AuthService>()));
    gh.factory<_i446.HomeCubit>(() => _i446.HomeCubit(
          fetchCategoriesUseCase: gh<_i23.FetchCategoriesUseCase>(),
          fetchProductsUseCase: gh<_i776.FetchProductsUseCase>(),
        ));
    gh.factory<_i349.CatalogCubit>(() => _i349.CatalogCubit(
          fetchCategoriesUseCase: gh<_i23.FetchCategoriesUseCase>(),
          fetchBrandsUseCase: gh<_i252.FetchBrandsUseCase>(),
        ));
    gh.factory<_i84.FetchCurrentUserUseCase>(
        () => _i84.FetchCurrentUserUseCase(gh<_i796.UserService>()));
    gh.factory<_i390.ProfileBloc>(() => _i390.ProfileBloc(
        fetchCurrentUserUseCase: gh<_i84.FetchCurrentUserUseCase>()));
    gh.factory<_i532.LoginCubit>(
        () => _i532.LoginCubit(loginUseCase: gh<_i919.LoginUseCase>()));
    gh.factory<_i1054.AppBloc>(() => _i1054.AppBloc(
          observeIsAuthenticatedUseCase:
              gh<_i647.ObserveIsAuthenticatedUseCase>(),
          logoutUseCase: gh<_i987.LogoutUseCase>(),
        ));
    return this;
  }
}

class _$TalkerConfig extends _i137.TalkerConfig {}

class _$EncodingModule extends _i374.EncodingModule {}

class _$PreferencesModule extends _i555.PreferencesModule {}

class _$DecoderModule extends _i695.DecoderModule {}

class _$SecureStorageModule extends _i640.SecureStorageModule {}

class _$HttpModule extends _i635.HttpModule {}

class _$DioConfig extends _i412.DioConfig {}
