import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/presentation/widgets/product_view.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({
    required this.products,
    this.shrinkWrap = true,
    this.physics,
    super.key,
  });

  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: shrinkWrap,
      physics: physics,
      itemCount: (products.length / 2).ceil(),
      itemBuilder: (context, index) {
        index *= 2;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Expanded(
                child: ProductView(
                  product: products[index],
                ),
              ),
              const SizedBox(width: 7),
              if (index+1 < products.length)
                Expanded(
                  child: ProductView(
                    product: products[index+1],
                  ),
                )
              else
                Spacer(),
            ],
          ),
        );
      },
    );
  }
}
