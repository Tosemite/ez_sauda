import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/number_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RatingInfoView extends StatelessWidget {
  const RatingInfoView({
    required this.rating,
    required this.totalReviews,
    super.key,
  });

  final double rating;
  final int totalReviews;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        context.icons.star.svg(
          colorFilter: ColorFilter.mode(
            context.colors.primary,
            BlendMode.srcIn,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          rating.formatted,
          style: context.typography.bodyRegular,
        ),
        const SizedBox(width: 4),
        Text(
          context.l10n.ofReviewsCount(totalReviews),
          style: context.typography.bodyRegular.copyWith(
            color: context.colors.secondary.withAlpha(115),
          ),
        ),
      ],
    );
  }
}
