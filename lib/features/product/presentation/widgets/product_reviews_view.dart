import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:ez_sauda/core/presentation/extensions/number_extension.dart';
import 'package:ez_sauda/features/product/domain/models/fetch_reviews_response.dart';
import 'package:ez_sauda/features/product/presentation/widgets/product_review_number_bar.dart';
import 'package:ez_sauda/features/product/presentation/widgets/product_review_view.dart';
import 'package:flutter/material.dart';

class ProductReviewsView extends StatelessWidget {
  const ProductReviewsView({required this.reviews, super.key});

  final FetchReviewsResponse reviews;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              context.l10n.reviewsCount(reviews.total),
              style: context.typography.headline5Medium,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  context.l10n.viewAll,
                  style: context.typography.footnoteDescription.copyWith(
                    color: context.colors.primary,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                context.icons.star.svg(
                  height: 32,
                  width: 32,
                  colorFilter: ColorFilter.mode(
                    context.colors.primary,
                    BlendMode.srcIn,
                  ),
                ),
                SizedBox(width: 6),
                Text(
                  reviews.averageGrade.formatted,
                  style: context.typography.headline3Regular,
                ),
              ],
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                children: [
                  ProductReviewNumberBar(
                    number: '5',
                    value: reviews.fives / reviews.total,
                    total: reviews.fives.toString(),
                  ),
                  ProductReviewNumberBar(
                    number: '4',
                    value: reviews.fours / reviews.total,
                    total: reviews.fours.toString(),
                  ),
                  ProductReviewNumberBar(
                    number: '3',
                    value: reviews.threes / reviews.total,
                    total: reviews.threes.toString(),
                  ),
                  ProductReviewNumberBar(
                    number: '2',
                    value: reviews.twos / reviews.total,
                    total: reviews.twos.toString(),
                  ),
                  ProductReviewNumberBar(
                    number: '1',
                    value: reviews.ones / reviews.total,
                    total: reviews.ones.toString(),
                  ),
                ],
              ),
            ),
          ],
        ),
        for (final review in reviews.review.take(3))
          ProductReviewView(review: review),
        SizedBox(height: 16),
      ],
    );
  }
}
