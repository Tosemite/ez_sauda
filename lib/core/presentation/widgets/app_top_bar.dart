import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AppTopBar extends StatelessWidget {
  const AppTopBar({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final child = this.child;
    return Material(
      child: SafeArea(
        top: true,
        bottom: false,
        right: false,
        left: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Row(
                children: [
                  context.images.logo.image(
                    height: 33,
                  ),
                  const Spacer(),
                  context.icons.down.svg(),
                  const SizedBox(width: 4),
                  Text(
                    'Рус',
                    style: context.typography.headline5Regular,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            if (child != null) Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
