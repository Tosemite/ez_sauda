import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/number_extension.dart';
import 'package:ez_sauda/features/cart/domain/models/cart_product.dart';
import 'package:flutter/material.dart';

class CartConfirmOrderProductGridTile extends StatelessWidget {
  const CartConfirmOrderProductGridTile({
    required this.cartProduct,
    super.key,
  });

  final CartProduct cartProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          SizedBox(
            width: 70,
            height: 70,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: context.colors.outline),
                image: DecorationImage(
                  image: NetworkImage(cartProduct.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '${cartProduct.totalPrice.formatted} ₸',
            style: context.typography.bodyBold.copyWith(
              color: context.colors.primary,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            '${cartProduct.quantity} шт',
            style: context.typography.footnoteDescription.copyWith(
              color: context.colors.secondary.withAlpha(115),
            ),
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
