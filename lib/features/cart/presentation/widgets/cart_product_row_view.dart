import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/widgets/product_counter_button.dart';
import 'package:ez_sauda/features/cart/domain/models/cart_product.dart';
import 'package:flutter/material.dart';

class CartProductRowView extends StatelessWidget {
  const CartProductRowView({
    required this.cartProduct,
    super.key,
  });

  final CartProduct cartProduct;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            height: 100,
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
          const SizedBox(width: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${cartProduct.totalPrice} ₸',
                    style: context.typography.headline5Bold.copyWith(
                      color: context.colors.primary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${cartProduct.unitPrice} ₸/1 шт.',
                    style: context.typography.bodyRegular.copyWith(
                      color: context.colors.secondary.withAlpha(115),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    cartProduct.name,
                    style: context.typography.bodyRegular,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  ProductCounterButton(
                    productId: cartProduct.productId,
                    count: cartProduct.quantity,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
