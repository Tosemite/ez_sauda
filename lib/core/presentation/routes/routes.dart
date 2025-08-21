import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/domain/models/brand.dart';
import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/presentation/screens/app_screen.dart';
import 'package:ez_sauda/core/presentation/screens/app_top_bar_wrapper_screen.dart.dart';
import 'package:ez_sauda/features/cart/presentation/screens/cart_screen.dart';
import 'package:ez_sauda/features/catalog/presentation/screens/catalog_screen.dart';
import 'package:ez_sauda/features/favorites/presentation/screens/favorites_screen.dart';
import 'package:ez_sauda/features/home/presentation/screens/home_screen.dart';
import 'package:ez_sauda/features/product/presentation/screens/product_screen.dart';
import 'package:ez_sauda/features/search/presentation/screens/product_search_screen.dart';
import 'package:ez_sauda/features/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';

part 'routes.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen|Dialog,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/',
          page: AppTopBarWrapperRoute.page,
          children: [
            AutoRoute(
              initial: true,
              path: '',
              page: AppRoute.page,
              children: [
                AutoRoute(
                  page: HomeRoute.page,
                  path: 'home',
                ),
                AutoRoute(
                  page: CatalogRoute.page,
                  path: 'catalog',
                ),
                AutoRoute(
                  page: CartRoute.page,
                  path: 'cart',
                ),
                AutoRoute(
                  page: FavoritesRoute.page,
                  path: 'favorites',
                ),
                AutoRoute(
                  page: ProfileRoute.page,
                  path: 'profile',
                ),
              ],
            ),
            AutoRoute(
              page: ProductRoute.page,
              path: 'product',
            ),
            AutoRoute(
              page: ProductSearchRoute.page,
              path: 'search',
            ),
          ],
        ),
      ];
}
