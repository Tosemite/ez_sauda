import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Works when you have column as child
/// and this column has exactly 1 Expanded widget
class AwareScrollable extends StatelessWidget {
  const AwareScrollable({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: child,
        ),
      ],
    );
  }
}
