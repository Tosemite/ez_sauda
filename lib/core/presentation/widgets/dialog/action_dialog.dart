import 'package:flutter/material.dart';

class ActionDialog extends StatelessWidget {
  const ActionDialog({
    required this.child,
    super.key,
  });

  static Future<T?> show<T>(BuildContext context, {required Widget child}) => showDialog<T>(
        useRootNavigator: true,
        context: context,
        builder: (context) => ActionDialog(child: child),
      );

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: Material(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.onPrimary,
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(24),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
