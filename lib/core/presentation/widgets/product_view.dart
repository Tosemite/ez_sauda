import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/presentation/bloc/app_bloc.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:ez_sauda/core/presentation/widgets/product_counter_button.dart';
import 'package:ez_sauda/core/presentation/widgets/rating_info_view.dart';
import 'package:ez_sauda/features/auth/presentation/dialogs/login_dialog.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_bloc.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_event.dart';
import 'package:ez_sauda/features/cart/presentation/blocs/cart_state.dart';
import 'package:ez_sauda/features/product/domain/models/distributor.dart';
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
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: context.colors.outline),
                image: DecorationImage(
                  image: NetworkImage(
                    //TODO change to product.imageUrls logic
                    'https://confitelia.com/6631-thickbox_default/twix-white-chocolate-pack.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '${product.unitPrice} ₸/${product.unitOfMeasurement}',
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
                    ? ElevatedButton(
                        onPressed: () async {
                          if (!context.read<AppBloc>().state.isAuthorized) {
                            if (!(await LoginDialog.show(context) ?? false)) {
                              return;
                            }
                          }
                          if (context.mounted) {
                            context.read<CartBloc>().add(
                                  CartProductAdded(
                                    product: product,
                                    distributor: Distributor(
                                      id: '1',
                                      rating: 1,
                                      totalReviews: 1,
                                      name: 'Поставщик 1',
                                    ),
                                  ),
                                );
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
