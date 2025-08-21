import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class ProductReviewNumberBar extends StatelessWidget {
  const ProductReviewNumberBar({
    required this.number,
    required this.value,
    required this.total,
    super.key,
  });

  final String number;
  final double value;
  final String total;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(number, style: context.typography.footnoteDescription),
        SizedBox(width: 4),
        Expanded(
          child: LinearProgressIndicator(
            value: value,
            color: context.colors.primary,
            minHeight: 7,
          ),
        ),
        SizedBox(width: 4),
        SizedBox(
          width: 16,
          child: Text(
            total,
            style: context.typography.footnoteDescription.copyWith(
              color: context.colors.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
