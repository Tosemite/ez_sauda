import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/domain/models/brand.dart';
import 'package:ez_sauda/core/domain/models/category.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/presentation/screens/app_screen.dart';
import 'package:ez_sauda/core/presentation/screens/app_top_bar_wrapper_screen.dart.dart';
import 'package:ez_sauda/features/cart/presentation/screens/cart_confirm_order_screen.dart';
import 'package:ez_sauda/features/cart/presentation/screens/cart_order_success_screen.dart';
import 'package:ez_sauda/features/cart/presentation/screens/cart_screen.dart';
import 'package:ez_sauda/features/cart/presentation/screens/cart_wrapper_screen.dart';
import 'package:ez_sauda/features/catalog/presentation/screens/catalog_screen.dart';
import 'package:ez_sauda/features/favorites/presentation/screens/favorites_screen.dart';
import 'package:ez_sauda/features/home/presentation/screens/home_screen.dart';
import 'package:ez_sauda/features/orders/domain/models/product_order.dart';
import 'package:ez_sauda/features/orders/presentation/screens/order_info_screen.dart';
import 'package:ez_sauda/features/orders/presentation/screens/order_list_screen.dart';
import 'package:ez_sauda/features/orders/presentation/screens/order_wrapper_screen.dart';
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
                  page: CartWrapperRoute.page,
                  path: 'cart',
                  children: [
                    AutoRoute(
                      page: CartRoute.page,
                      path: 'initial',
                    ),
                    AutoRoute(
                      page: CartConfirmOrderRoute.page,
                      path: 'confirm',
                    ),
                  ],
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
            AutoRoute(
              page: CartOrderSuccessRoute.page,
              path: 'order-success',
            ),
            AutoRoute(
              page: OrderWrapperRoute.page,
              path: 'my-orders',
              children: [
                AutoRoute(
                  page: OrderListRoute.page,
                  path: 'list',
                  initial: true,
                ),
                AutoRoute(
                  page: OrderInfoRoute.page,
                  path: 'info',
                ),
              ],
            ),
          ],
        ),
      ];
}
