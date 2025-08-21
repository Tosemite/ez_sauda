import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ProductAboutInfoRow extends StatelessWidget {
  const ProductAboutInfoRow({
    required this.title,
    required this.value,
    super.key,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              title,
              style: context.typography.bodyRegular.copyWith(
                color: context.colors.secondary.withAlpha(115),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: context.typography.bodyRegular.copyWith(
                color: context.colors.secondary.withAlpha(217),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
