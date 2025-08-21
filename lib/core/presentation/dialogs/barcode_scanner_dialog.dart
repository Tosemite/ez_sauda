import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../widgets/dialog/action_dialog.dart';

class BarcodeScannerDialog extends StatelessWidget {
  const BarcodeScannerDialog({super.key});

  static Future<String?> show(BuildContext context) =>
      ActionDialog.show<String?>(
        context,
        child: BarcodeScannerDialog(),
      );

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4,
      child: MobileScanner(
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          context.router.pop(barcodes.firstOrNull?.rawValue);
        },
      ),
    );
  }
}
