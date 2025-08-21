import 'package:ez_sauda/core/data/extensions/date_time_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/features/product/domain/models/review.dart';
import 'package:flutter/material.dart';

class ProductReviewView extends StatelessWidget {
  const ProductReviewView({
    required this.review,
    super.key,
  });

  final Review review;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.colors.onSurfaceVariant,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 17,
                backgroundImage: NetworkImage(
                  review.imageUrl,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      review.name,
                      style: context.typography.footnoteDescription,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      review.companyName,
                      style: context.typography.footnoteDescription.copyWith(
                        color: context.colors.onSurface,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      for (int i = 1; i < 6; i++)
                        context.icons.star.svg(
                          colorFilter: ColorFilter.mode(
                            i <= review.rating
                                ? context.colors.primary
                                : context.colors.onSurface,
                            BlendMode.srcIn,
                          ),
                        ),
                    ],
                  ),
                  Text(
                    review.createdAt.formatToDayMonthFull(context.localeName),
                    style: context.typography.footnoteDescription.copyWith(
                      color: context.colors.onSurface,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            review.comment,
          ),
        ],
      ),
    );
  }
}
