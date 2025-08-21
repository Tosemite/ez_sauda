import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:ez_sauda/features/product/presentation/dialogs/product_all_distributors_dialog.dart';
import 'package:ez_sauda/features/product/presentation/widgets/product_distributor_view.dart';
import 'package:flutter/material.dart';

class ProductDistributorsView extends StatelessWidget {
  const ProductDistributorsView({required this.distributors, super.key});

  final List<ProductDistributor> distributors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.l10n.supplierCount(distributors.length),
              style: context.typography.headline5Medium,
            ),
            InkWell(
              onTap: () => ProductAllDistributorsDialog.show(
                context,
                distributors: distributors,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  context.l10n.viewAll,
                  style: context.typography.footnoteDescription.copyWith(
                    color: context.colors.primary,
                  ),
                ),
              ),
            ),
          ],
        ),
        for (final distributor in distributors.take(2))
          ProductDistributorView(distributor: distributor),
        SizedBox(height: 16),
      ],
    );
  }
}
