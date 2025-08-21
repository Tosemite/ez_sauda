import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ez_sauda/core/presentation/widgets/ios_numeric_done.dart';

mixin WidgetHasNumericMixin<T extends StatefulWidget> on State<T> {
  final numericFieldNode = FocusNode();

  OverlayEntry? overlayEntry;

  void showOverlay(BuildContext context) {
    if (this.overlayEntry != null || !Platform.isIOS) return;
    OverlayState overlayState = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          right: 0.0,
          left: 0.0,
          child: const IosNumericDone(),
        );
      },
    );
    this.overlayEntry = overlayEntry;
    overlayState.insert(overlayEntry);
  }

  void removeOverlay() {
    overlayEntry?.remove();
    overlayEntry = null;
  }

  @override
  void initState() {
    numericFieldNode.addListener(() {
      if (numericFieldNode.hasFocus) {
        showOverlay(context);
      } else {
        removeOverlay();
      }
    });
    super.initState();
  }
}
