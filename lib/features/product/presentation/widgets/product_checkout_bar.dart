import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/number_extension.dart';
import 'package:ez_sauda/core/presentation/routes/routes.dart';
import 'package:ez_sauda/core/presentation/widgets/product_counter_button.dart';
import 'package:ez_sauda/features/cart/domain/models/cart_product.dart';
import 'package:flutter/material.dart';

class ProductCheckoutBar extends StatelessWidget {
  const ProductCheckoutBar({
    required this.productCartInfo,
    required this.product,
    super.key,
  });

  final Product product;
  final CartProduct productCartInfo;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8),
        ),
        color: context.colors.outlineVariant,
      ),
      child: SafeArea(
        child: Container(
          height: 110,
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 12,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${productCartInfo.totalPrice.formatted} ₸',
                          style: context.typography.headline5Bold,
                        ),
                        Text(
                          context.l10n.minOrderSum(5000),
                          style:
                              context.typography.footnoteDescription.copyWith(
                            color: context.colors.secondary.withAlpha(115),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ProductCounterButton(
                    productId: product.id,
                    unitOfMeasurement: product.unitOfMeasurement,
                    count: productCartInfo.quantity,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () => context.router.navigate(CartRoute()),
                child: Row(
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
            ],
          ),
        ),
      ),
    );
  }
}
