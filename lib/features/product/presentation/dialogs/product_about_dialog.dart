import 'package:ez_sauda/core/domain/models/product.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/widgets/dialog/popup_dialog.dart';
import 'package:ez_sauda/features/product/presentation/widgets/product_about_info_row.dart';
import 'package:flutter/material.dart';

class ProductAboutDialog extends StatelessWidget {
  const ProductAboutDialog({required this.product, super.key});

  final Product product;

  static Future<bool?> show(
    BuildContext context, {
    required Product product,
  }) =>
      PopupDialog.show(
        context,
        child: ProductAboutDialog(
          product: product,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.aboutTheProduct,
          style: context.typography.headline5Bold,
        ),
        const SizedBox(height: 12),
        ProductAboutInfoRow(
          title: context.l10n.barcode,
          value: product.barcode,
        ),
        ProductAboutInfoRow(
          title: context.l10n.composition,
          value: product.ingredients,
        ),
        ProductAboutInfoRow(
          title: context.l10n.productAmountInPackage,
          value: '${product.packageVolume} ${product.unitOfMeasurement}',
        ),
        ProductAboutInfoRow(
          title: context.l10n.measurementUnit,
          value: product.unitOfMeasurement,
        ),
        ProductAboutInfoRow(
          title: context.l10n.productDescription,
          value: product.description,
        ),
        const SizedBox(height: 12),
        Center(
          child: Text(
            context.l10n.allInfoProvidedBySeller,
            style: context.typography.bodyRegular.copyWith(
              color: context.colors.secondary.withAlpha(115),
            ),
          ),
        ),
      ],
    );
  }
}
