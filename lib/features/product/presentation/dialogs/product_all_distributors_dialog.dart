import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/widgets/dialog/popup_dialog.dart';
import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:ez_sauda/features/product/presentation/widgets/product_distributor_view.dart';
import 'package:flutter/material.dart';

class ProductAllDistributorsDialog extends StatelessWidget {
  const ProductAllDistributorsDialog({required this.distributors, super.key});

  final List<ProductDistributor> distributors;

  static Future<bool?> show(
    BuildContext context, {
    required List<ProductDistributor> distributors,
  }) =>
      PopupDialog.show(
        context,
        child: ProductAllDistributorsDialog(
          distributors: distributors,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.suppliers,
          style: context.typography.headline5Bold,
        ),
        const SizedBox(height: 12),
        for (final distributor in distributors)
          ProductDistributorView(distributor: distributor),
      ],
    );
  }
}
