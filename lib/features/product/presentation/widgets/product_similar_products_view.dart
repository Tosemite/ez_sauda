import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/features/product/presentation/widgets/product_list_view.dart';
import 'package:flutter/material.dart';

class ProductSimilarProductsView extends StatelessWidget {
  const ProductSimilarProductsView({required this.products, super.key});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text(
          context.l10n.similarProducts,
          style: context.typography.headline5Medium,
        ),
        ProductListView(
          physics: NeverScrollableScrollPhysics(),
          products: products,
        ),
      ],
    );
  }
}
