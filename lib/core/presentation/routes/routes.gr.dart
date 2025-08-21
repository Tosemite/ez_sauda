// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

/// generated route for
/// [AppScreen]
class AppRoute extends PageRouteInfo<void> {
  const AppRoute({List<PageRouteInfo>? children})
      : super(AppRoute.name, initialChildren: children);

  static const String name = 'AppRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppScreen();
    },
  );
}

/// generated route for
/// [AppTopBarWrapperScreen]
class AppTopBarWrapperRoute extends PageRouteInfo<void> {
  const AppTopBarWrapperRoute({List<PageRouteInfo>? children})
      : super(AppTopBarWrapperRoute.name, initialChildren: children);

  static const String name = 'AppTopBarWrapperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppTopBarWrapperScreen();
    },
  );
}

/// generated route for
/// [CartScreen]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(CartRoute.name, initialChildren: children);

  static const String name = 'CartRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CartScreen();
    },
  );
}

/// generated route for
/// [CatalogScreen]
class CatalogRoute extends PageRouteInfo<void> {
  const CatalogRoute({List<PageRouteInfo>? children})
      : super(CatalogRoute.name, initialChildren: children);

  static const String name = 'CatalogRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CatalogScreen();
    },
  );
}

/// generated route for
/// [FavoritesScreen]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute({List<PageRouteInfo>? children})
      : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoritesScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [ProductScreen]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    required Product product,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(product: product, key: key),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductRouteArgs>();
      return ProductScreen(product: args.product, key: args.key);
    },
  );
}

class ProductRouteArgs {
  const ProductRouteArgs({required this.product, this.key});

  final Product product;

  final Key? key;

  @override
  String toString() {
    return 'ProductRouteArgs{product: $product, key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductRouteArgs) return false;
    return product == other.product && key == other.key;
  }

  @override
  int get hashCode => product.hashCode ^ key.hashCode;
}

/// generated route for
/// [ProductSearchScreen]
class ProductSearchRoute extends PageRouteInfo<ProductSearchRouteArgs> {
  ProductSearchRoute({
    Key? key,
    Category? category,
    Brand? brand,
    String? barcode,
    List<PageRouteInfo>? children,
  }) : super(
          ProductSearchRoute.name,
          args: ProductSearchRouteArgs(
            key: key,
            category: category,
            brand: brand,
            barcode: barcode,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductSearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductSearchRouteArgs>(
        orElse: () => const ProductSearchRouteArgs(),
      );
      return ProductSearchScreen(
        key: args.key,
        category: args.category,
        brand: args.brand,
        barcode: args.barcode,
      );
    },
  );
}

class ProductSearchRouteArgs {
  const ProductSearchRouteArgs({
    this.key,
    this.category,
    this.brand,
    this.barcode,
  });

  final Key? key;

  final Category? category;

  final Brand? brand;

  final String? barcode;

  @override
  String toString() {
    return 'ProductSearchRouteArgs{key: $key, category: $category, brand: $brand, barcode: $barcode}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductSearchRouteArgs) return false;
    return key == other.key &&
        category == other.category &&
        brand == other.brand &&
        barcode == other.barcode;
  }

  @override
  int get hashCode =>
      key.hashCode ^ category.hashCode ^ brand.hashCode ^ barcode.hashCode;
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileScreen();
    },
  );
}
