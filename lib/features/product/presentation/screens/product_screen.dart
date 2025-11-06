import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/widgets/image_carousel.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_bloc.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_state.dart';
import 'package:ez_sauda/features/product/domain/models/fetch_reviews_response.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:ez_sauda/features/product/presentation/blocs/product_bloc.dart';
import 'package:ez_sauda/features/product/presentation/blocs/product_state.dart';
import 'package:ez_sauda/features/product/presentation/dialogs/product_about_dialog.dart';
import 'package:ez_sauda/features/product/presentation/widgets/product_checkout_bar.dart';
import 'package:ez_sauda/features/product/presentation/widgets/product_distributors_view.dart';
import 'package:ez_sauda/features/product/presentation/widgets/product_reviews_view.dart';
import 'package:ez_sauda/features/product/presentation/widgets/product_similar_products_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProductScreen extends StatelessWidget {
  const ProductScreen({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;
    return BlocProvider<ProductBloc>(
      create: (_) => context.di<ProductBloc>(param1: product),
      child: Scaffold(
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            return ListView(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              children: [
                SizedBox(
                  height: 200,
                  child: ImageCarousel(imageUrls: product.imageUrls),
                ),
                SizedBox(height: 16),
                Text(
                  product.name,
                  style: context.typography.headline5Medium,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () =>
                        ProductAboutDialog.show(context, product: product),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            context.l10n.aboutTheProduct,
                            style: context.typography.bodyRegular.copyWith(
                              color: context.colors.primary,
                            ),
                          ),
                          SizedBox(width: 8),
                          context.icons.arrowRight.svg(
                            height: 15,
                            width: 15,
                            colorFilter: ColorFilter.mode(
                              context.colors.primary,
                              BlendMode.srcIn,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Divider(
                  color: context.colors.outline,
                ),
                switch (state.distributors) {
                  //TODO handle failure
                  ValueInitial<List<ProductDistributor>>() ||
                  ValueInProgress<List<ProductDistributor>>() ||
                  ValueFailure<List<ProductDistributor>>() =>
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ValueSuccess<List<ProductDistributor>>(
                    value: final distributors
                  ) =>
                    ProductDistributorsView(
                      distributors: distributors,
                      product: product,
                    )
                },
                Divider(
                  color: context.colors.outline,
                ),
                switch (state.reviews) {
                  //TODO handle failure
                  ValueInitial<FetchReviewsResponse>() ||
                  ValueInProgress<FetchReviewsResponse>() ||
                  ValueFailure<FetchReviewsResponse>() =>
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ValueSuccess<FetchReviewsResponse>(value: final reviews) =>
                    ProductReviewsView(reviews: reviews)
                },
                Divider(
                  color: context.colors.outline,
                ),
                switch (state.similarProducts) {
                  //TODO handle failure
                  ValueInitial<List<Product>>() ||
                  ValueInProgress<List<Product>>() ||
                  ValueFailure<List<Product>>() =>
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ValueSuccess<List<Product>>(value: final products) =>
                    ProductSimilarProductsView(products: products)
                },
                SizedBox(height: bottomPadding),
              ],
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            final existingProduct = state.productMap[product.id];
            if (existingProduct == null) {
              return SizedBox.shrink();
            }
            return ProductCheckoutBar(
              productCartInfo: existingProduct,
              product: product,
            );
          },
        ),
      ),
    );
  }
}
