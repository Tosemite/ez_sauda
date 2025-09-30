import 'package:ez_sauda/core/presentation/dialogs/barcode_scanner_dialog.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class BarcodeIconButton extends StatelessWidget {
  const BarcodeIconButton({super.key, this.onBarcodeScanned});

  final Function(String)? onBarcodeScanned;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final barcode = await BarcodeScannerDialog.show(context);
        if (barcode != null && context.mounted) {
          onBarcodeScanned?.call(barcode);
        }
      },
      borderRadius: BorderRadius.circular(100),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: context.icons.scan.svg(
          colorFilter: ColorFilter.mode(
            context.colors.primary,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}

