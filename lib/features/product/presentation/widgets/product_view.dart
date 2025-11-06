import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/presentation/bloc/app_bloc.dart';
import 'package:ez_sauda/core/presentation/bloc/value_state.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/number_extension.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:ez_sauda/core/presentation/widgets/bounce_loader.dart';
import 'package:ez_sauda/core/presentation/widgets/image_carousel.dart';
import 'package:ez_sauda/core/presentation/widgets/product_counter_button.dart';
import 'package:ez_sauda/core/presentation/widgets/rating_info_view.dart';
import 'package:ez_sauda/features/auth/presentation/dialogs/login_dialog.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_bloc.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_event.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_state.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:ez_sauda/features/product/presentation/blocs/product_distributor_bloc.dart';
import 'package:ez_sauda/features/product/presentation/blocs/product_distributor_event.dart';
import 'package:ez_sauda/features/product/presentation/blocs/product_distributor_state.dart';
import 'package:ez_sauda/features/product/presentation/dialogs/product_all_distributors_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductView extends StatelessWidget {
  const ProductView({
    required this.product,
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(ProductRoute(product: product)),
      borderRadius: BorderRadius.circular(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ImageCarousel(imageUrls: product.imageUrls),
          ),
          const SizedBox(height: 4),
          Text(
            '${product.unitPrice.formatted} ₸/${product.unitOfMeasurement}',
            style: context.typography.headline5Bold.copyWith(
              color: context.colors.primary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            '${product.name}\n',
            style: context.typography.bodyRegular,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 5),
          RatingInfoView(
            rating: 4.5,
            totalReviews: 20,
          ),
          const SizedBox(height: 8),
          BlocBuilder<CartBloc, CartState>(
            buildWhen: (prev, curr) =>
                prev.productMap[product.id] != curr.productMap[product.id],
            builder: (context, state) {
              final count = state.productMap[product.id]?.quantity ?? 0;
              return SizedBox(
                height: 32,
                child: count == 0
                    ? BlocProvider(
                        create: (_) => context.di<ProductDistributorBloc>(
                          param1: product.id,
                        ),
                        child: BlocConsumer<ProductDistributorBloc,
                            ProductDistributorState>(
                          listener: (context, state) {
                            switch (state.distributors) {
                              case ValueSuccess<List<ProductDistributor>>(
                                  value: final distributors
                                ):
                                switch (distributors.length) {
                                  case 1:
                                    context.read<CartBloc>().add(
                                          CartProductAdded(
                                            product: product,
                                            distributor: distributors.first,
                                          ),
                                        );
                                  case 0:
                                    return;
                                  default:
                                    ProductAllDistributorsDialog.show(
                                      context,
                                      distributors: distributors,
                                      product: product,
                                    );
                                }
                              case ValueFailure<List<ProductDistributor>>():
                              // TODO: Handle this case.
                              case ValueInProgress<List<ProductDistributor>>():
                              case ValueInitial<List<ProductDistributor>>():
                            }
                          },
                          builder: (context, state) {
                            return SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () async {
                                  if (!context
                                      .read<AppBloc>()
                                      .state
                                      .isAuthorized) {
                                    if (!(await LoginDialog.show(context) ??
                                        false)) {
                                      return;
                                    }
                                  }
                                  if (context.mounted) {
                                    context.read<ProductDistributorBloc>().add(
                                          ProductDistributorFetched(),
                                        );
                                  }
                                },
                                child: state.distributors is ValueInProgress
                                    ? const BounceLoader(size: 20)
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          context.icons.shoppingCart.svg(
                                            colorFilter: ColorFilter.mode(
                                              context.colors.onPrimary,
                                              BlendMode.srcIn,
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          Text(context.l10n.toCart),
                                        ],
                                      ),
                              ),
                            );
                          },
                        ),
                      )
                    : ProductCounterButton(
                        productId: product.id,
                        unitOfMeasurement: product.unitOfMeasurement,
                        count: count,
                      ),
              );
            },
          ),
        ],
      ),
    );
  }
}
