import 'package:auto_route/auto_route.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class PopupDialog extends StatelessWidget {
  const PopupDialog({
    required this.child,
    super.key,
  });

  static Future<T?> show<T>(BuildContext context, {required Widget child}) =>
      showModalBottomSheet<T>(
        barrierColor: context.colors.secondary.withAlpha(64),
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12),
          ),
        ),
        builder: (context) => PopupDialog(child: child),
      );

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: IntrinsicHeight(child: child),
          ),
          Positioned(
            top: 12,
            right: 12,
            child: InkWell(
              borderRadius: BorderRadius.circular(100),
              onTap: context.router.pop,
              child: context.icons.closeCircle.svg(),
            ),
          ),
        ],
      ),
    );
  }
}
